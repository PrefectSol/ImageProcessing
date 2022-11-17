#include "include/Headings.h"
#include "Services/OS.h"

using namespace std;
using namespace filesystem;
using namespace cv;

int numberOfProcessing = 0;
bool isProcessing = true;

bool UploadImages(const Mat& image, const string filename, const string path) {
    return imwrite(path + filename, image);
}

void AdjustmentImage(Mat& image) {
    const unsigned int ROW = max(512, image.rows);
    const unsigned int COL = max(512, image.cols);
    
    if (image.rows < ROW || image.cols < COL) {
        Mat3b res(ROW, COL, Vec3b(255, 255, 255));

        if (ROW > 512) {
            image.copyTo(res(Rect(256 - image.cols / 2, 0, image.cols, image.rows)));
        }
        else if (COL > 512) {
            image.copyTo(res(Rect(0, 256 - image.rows / 2, image.cols, image.rows)));
        }
        else {
            image.copyTo(res(Rect(256 - image.cols / 2, 256 - image.rows / 2, image.cols, image.rows)));
        }

        image = res;
    }
}

void CutImage(Mat& image) {
    Size center(image.rows / 2, image.cols / 2);
    image = image(Range(center.width - 256, center.width + 256), Range(center.height - 256, center.height + 256));
}

bool CreateOutput(string& output) {
    try {
        if (is_directory(output)) {
            return true;
        }

        if (GetOS() == Linux) {
        #ifdef __linux
            const string USERNAME = getlogin();
            string home = "/home/" + USERNAME + "/";
        #endif 
            
            if (output.substr(0, home.length()) == home) {
                home = "";
            }

            output = home + output;
        }
        else {
            string home = "C:\\";

            if (output.substr(0, home.length()) == home) {
                home = "";
            }

            output = home + output;
        }

        return create_directory(output);
    } catch (...) {
        return false;
    }
}

void GetImages(vector<Mat>& images, vector<string>& filenames, const string path, int start, int count) {
    const string JPEG_IMAGE_EXTENSION = ".jpeg";
    const string JPG_IMAGE_EXTENSION = ".jpg";
    const string PNG_IMAGE_EXTENSION = ".png";

    int elem = 0;
    for (const auto &entry : directory_iterator(path)) {
        if (elem < start) {
            elem++;

            continue;
        }

        if (elem >= start + count) {
            break;
        }

        if (entry.path().extension() == JPEG_IMAGE_EXTENSION ||
            entry.path().extension() == JPG_IMAGE_EXTENSION ||
            entry.path().extension() == PNG_IMAGE_EXTENSION) {

            images.push_back(imread(entry.path()));
            filenames.push_back(entry.path().filename());

            elem++;
        }
    }

    if (images.size() < count) {
        isProcessing = false;
    }
}

void Processing(const string input, const string output, int start, int count) {
    vector<Mat> images;
    vector<string> filenames;    

    GetImages(images, filenames, input, start, count);

    for(int i = 0; i < images.size(); i++) {
        AdjustmentImage(images[i]);
        CutImage(images[i]);

        if (!UploadImages(images[i], filenames[i], output)) {
            printf("\033[3;42;30m Failed to upload image: %s with path: %s \033[0m\n", filenames[i], output);
        }
    }

    numberOfProcessing--;
}

void Startup(const string input, string output, const unsigned int threadCount, const unsigned int jump) {
    if (!CreateOutput(output)) {
        printf("\033[3;42;30m Failed to create output path: %s \033[0m\n", output);
        return;
    }
    
    int acceptable = thread::hardware_concurrency();
    if (threadCount > acceptable) {
        printf("\033[3;42;30m Too many threads: %d \t Acceptable quantity: %d \033[0m\n", threadCount, acceptable);
        return;
    }

    unsigned int start = 0;

    vector<thread> threads;
    for(int i = 0; i < threadCount; i++, start += jump) {
        threads.push_back(thread(Processing, input, output, start, jump));
        numberOfProcessing++;
    }

    while(isProcessing) {
        while(numberOfProcessing != threadCount) {
            threads.push_back(thread(Processing, input, output, start, jump));

            start += jump;
            numberOfProcessing++;
        }
    }

    for(auto &th : threads) {
        th.join();
    }

    threads.clear();
}

int main(int argc, char *argv[]) {
    try {
        if (argc != 5 || !is_directory(argv[1]) || atoi(argv[3]) <= 0 || atoi(argv[4]) <= 0) {
            cout << "ImageProcessing" << endl;
            cout << "Processes images from the specified folder and saves the processed images to another specified folder." << endl;
            cout << "Example:" << endl << "./ImageProcessing <input folder> <output folder> <number of threads> <items on the thread>" << endl;
        }
        else {
            Startup(argv[1], argv[2], atoi(argv[3]), atoi(argv[4]));
        }
    } catch (...) {
        printf("\033[3;42;30m Permission denied \033[0m\n");
    }

    return 0;
}