#include "include/Headings.h"

using namespace std;
using namespace filesystem;
using namespace cv;

bool UploadImages(const Mat& image, const string filename, const string path) {
    return imwrite(path + filename, image);
}

void AdjustmentImage(Mat& image) {
    const int SQUARE = 512;
    const unsigned int ROW = max(SQUARE, image.rows);
    const unsigned int COL = max(SQUARE, image.cols);
    
    if (image.rows < ROW || image.cols < COL) {
        Mat3b res(ROW, COL, Vec3b(255, 255, 255));

        if (ROW > SQUARE) {
            image.copyTo(res(Rect(SQUARE / 2 - image.cols / 2, 0, image.cols, image.rows)));
        }
        else if (COL > SQUARE) {
            image.copyTo(res(Rect(0, SQUARE / 2 - image.rows / 2, image.cols, image.rows)));
        }
        else {
            image.copyTo(res(Rect(SQUARE / 2 - image.cols / 2, SQUARE / 2 - image.rows / 2, image.cols, image.rows)));
        }

        image = res;
    }
}

void CutImage(Mat& image) {
    const unsigned int OFFSET = 256;
    Size center(image.rows / 2, image.cols / 2);
    image = image(Range(center.width - OFFSET, center.width + OFFSET), Range(center.height - OFFSET, center.height + OFFSET));
}

bool CreateOutput(string& output) {
    try {
        if (is_directory(output)) {
            return true;
        }

        #ifdef __linux
            const string USERNAME = getlogin();
            string home = "/home/" + USERNAME + "/";
            
            if (output.substr(0, home.length()) == home) {
                home = "";
            }

            output = home + output;
        #else
            string home = "C:\\";

            if (output.substr(0, home.length()) == home) {
                home = "";
            }

            output = home + output;
        #endif

        return create_directory(output);
    } catch (...) {
        return false;
    }
}

void GetImagePaths(vector<string>& imagePaths, const string path) {
    const string JPEG_IMAGE_EXTENSION = ".jpeg";
    const string JPG_IMAGE_EXTENSION = ".jpg";
    const string PNG_IMAGE_EXTENSION = ".png";

    for (const auto &entry : directory_iterator(path)) {
        if (entry.path().extension() == JPEG_IMAGE_EXTENSION ||
            entry.path().extension() == JPG_IMAGE_EXTENSION ||
            entry.path().extension() == PNG_IMAGE_EXTENSION) {

            imagePaths.push_back(entry.path());
        }
    }
}

void Processing(vector<string>* imagePaths, const string input, const string output, int start, int end) {
    Mat image; 
    for(int i = start; i < end; i++) {
        image = imread((*imagePaths)[i]);
        AdjustmentImage(image);
        CutImage(image);

        if (!UploadImages(image, directory_entry((*imagePaths)[i]).path().filename(), output)) {
            printf("\033[3;42;30m Failed to upload image: %s with path: %s \033[0m\n", imagePaths[i], output);
        }
    }
}

void Startup(const string input, string output, unsigned int threadCount) {
    if (!CreateOutput(output)) {
        printf("\033[3;42;30m Failed to create output path: %s \033[0m\n", output);
        return;
    }
    
    int acceptable = thread::hardware_concurrency();
    if (threadCount > acceptable) {
        printf("\033[3;42;30m Too many threads: %d \t Acceptable quantity: %d \033[0m\n", threadCount, acceptable);
        return;
    }

    vector<string> imagePaths;
    vector<thread> threads;

    GetImagePaths(imagePaths, input); 

    if (imagePaths.size() == 0) {
        return;
    }

    if (imagePaths.size() < threadCount) {
        threadCount = imagePaths.size();
    }

    int load = imagePaths.size() / threadCount;
    int addon = imagePaths.size() % threadCount;
    
    for(int i = 0; i < threadCount; i++) {
        threads.push_back(thread(Processing, &imagePaths, input, output,  load * i, load * (i + 1))); 
    }

    Processing(&imagePaths, input, output, imagePaths.size() - addon, imagePaths.size());

    for(auto &th : threads) {
        th.join();
    }
    
    threads.clear();
}

int main(int argc, char *argv[]) {
    try {
        if (argc != 4 || !is_directory(argv[1]) || atoi(argv[3]) <= 0) {
            cout << "ImageProcessing" << endl;
            cout << "Processes images from the specified folder and saves the processed images to another specified folder." << endl;
            cout << "Example:" << endl << "./ImageProcessing <input folder> <output folder> <number of threads>" << endl;
        }
        else {
            Startup(argv[1], argv[2], atoi(argv[3]));
        }
    } catch (...) {
        printf("\033[3;42;30m Permission denied \033[0m\n");
    }

    return 0;
}