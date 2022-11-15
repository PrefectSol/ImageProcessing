#include "include/Headings.h"

using namespace std;
using namespace cv;

void UploadImages(const Mat images, const string files, const string path) {
    imwrite(path + files, images);
}

void AdjustmentPath(string& path) {
    if (path[path.length() - 1] != '/') {
        path += '/';
    }
}

void AdjustmentImage(Mat& image) {
    const unsigned int ROW = 512;
    const unsigned int COL = 512;

    if (image.rows < ROW || image.cols < COL) {
        Mat3b res(ROW, COL, Vec3b(255, 255, 255));
        image.copyTo(res(Rect(0, 0, image.cols, image.rows)));

        image = res;
    }
}

void CutImage(Mat& image) {
    Size center(image.rows / 2, image.cols / 2);
    image = image(Range(center.width - 256, center.width + 256), Range(center.height - 256, center.height + 256));
}

void Processing(const string input, const string output) {
    if (input == "/" || output == "/") {
        return;
    }

    const string JPEG_IMAGE_EXTENSION = ".jpeg";
    const string JPG_IMAGE_EXTENSION = ".jpg";
    const string PNG_IMAGE_EXTENSION = ".png";

    for (const auto & entry : filesystem::directory_iterator(input)) {
        if (entry.path().extension() == JPEG_IMAGE_EXTENSION ||
            entry.path().extension() == JPG_IMAGE_EXTENSION ||
            entry.path().extension() == PNG_IMAGE_EXTENSION) {
            
            Mat image = imread(entry.path());
            string file = entry.path().filename();

            AdjustmentImage(image);
            CutImage(image);
            UploadImages(image, file, output);
        }
    }
}

int main() {
    string inputPath, outputPath;

    do {
        printf("Enter the path of the folder with images (input): ");
        getline(cin, inputPath, '\n');

        printf("Enter the path of the results folder (output): ");
        getline(cin, outputPath, '\n');

        AdjustmentPath(inputPath);
        AdjustmentPath(outputPath);

        thread task(Processing, inputPath, outputPath);
        task.detach();
    } while (inputPath != "/" && outputPath != "/" );

    return 0;
}