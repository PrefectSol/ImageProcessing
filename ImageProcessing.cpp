#include "include/Headings.h"
#include "Services/OS.h"

using namespace std;
using namespace filesystem;
using namespace cv;

bool UploadImages(const Mat image, const string filename, const string path) {
    return imwrite(path + filename, image);;
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
    if (is_directory(output)) {
        return is_directory(output);
    }

    if (GetOS() == Linux) {
        const string USERNAME = getlogin();
        string home = "/home/" + USERNAME + "/";
        
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
}

void GetImages(vector<Mat>& images, vector<string>& filenames, const string path) {
    const string JPEG_IMAGE_EXTENSION = ".jpeg";
    const string JPG_IMAGE_EXTENSION = ".jpg";
    const string PNG_IMAGE_EXTENSION = ".png";

    for (const auto & entry : directory_iterator(path)) {
        if (entry.path().extension() == JPEG_IMAGE_EXTENSION ||
            entry.path().extension() == JPG_IMAGE_EXTENSION ||
            entry.path().extension() == PNG_IMAGE_EXTENSION) {

            images.push_back(imread(entry.path()));
            filenames.push_back(entry.path().filename());
        }
    }
}

void Processing(vector<Mat> images, const vector<string> filenames, const string output, int start, int end) {
    for(int i = start; i < end; i++) {
        AdjustmentImage(images[i]);
        CutImage(images[i]);

        if (!UploadImages(images[i], filenames[i], output)) {
            printf("\033[3;42;30m Failed to upload image: %s with path: %s \033[0m\n", filenames[i], output);
        }
    }
}

void Startup(const string input, string output) {
    const string JPEG_IMAGE_EXTENSION = ".jpeg";
    const string JPG_IMAGE_EXTENSION = ".jpg";
    const string PNG_IMAGE_EXTENSION = ".png";

    vector<Mat> images;
    vector<string> filenames;

    GetImages(images, filenames, input);

    if (!CreateOutput(output)) {
        printf("\033[3;42;30m Failed to create output path: %s \033[0m\n", output);
        return;
    }

    thread th1([&]() {
        Processing(images, filenames, output, 0, images.size() / 2);
    });

    thread th2([&]() {
        Processing(images, filenames, output, images.size() / 2, images.size());
    });

    th1.join();
    th2.join();
}

int main(int argc, char *argv[]) {
    if (argc != 3 || !is_directory(argv[1])) {
        cout << "ImageProcessing" << endl;
        cout << "Processes images from the specified folder and saves the processed images to another specified folder." << endl;
        cout << "Example:" << endl << "./ImageProcessing <input folder> <output folder>" << endl;
    }
    else {
        Startup(argv[1], argv[2]);
    }

    return 0;
}