# Kannada Handwritten Character Recognition using Transfer Learning

This project aims to recognize handwritten Kannada characters using transfer learning with the VGG19 and ResNet50 pre-trained networks in MATLAB. The project leverages the power of deep learning and transfer learning to classify Kannada characters with high accuracy.

## Project Overview

The project involves the following key steps:
1. **Data Preparation**: Loading and preprocessing the image data.
2. **Network Definition**: Modifying the pre-trained VGG19 and ResNet50 networks to match the number of classes in the Kannada character dataset.
3. **Training**: Training the modified networks using the prepared data.
4. **Testing**: Classifying a set of test images and evaluating the performance of the trained networks.

## Files and Their Purpose

### Dataset
- This dataset was created by members of this group project.
[![Kaggle](https://img.shields.io/badge/Kaggle-Dataset-blue?logo=kaggle)](https://www.kaggle.com/datasets/ghyanbopanna/kannada-characters-dataset-493-classes)

### Script
- **`DeepRes_fif.m`**: Script for training and testing the Resnet50 network.

### Auxiliary Files (Saved Weights and Paramaters)
- **`vgnet20.mat`**: Pre-trained VGG19 network file.
- **`gresnet50.mat`**: Pre-trained ResNet50 network file.


## Methodology

The proposed methodology involves using transfer learning to adapt pre-trained models (VGG19 and ResNet50) for the task of recognizing handwritten Kannada characters. The steps include:
1. **Feature Extraction**: Using the pre-trained models to extract features from the input images.
2. **Classification**: Fine-tuning the models to classify the extracted features into 493 classes of Kannada characters.

## Experimental Results

The experiments were conducted using the ResNet50 model, which was trained over 20 epochs. The validation accuracy achieved was 91.11%. The results demonstrate the effectiveness of the proposed methodology in recognizing handwritten Kannada characters.


## How to Run

1. **Set Up MATLAB**: Ensure MATLAB is installed with the Deep Learning Toolbox.
2. **Load Data**: Place your image data in the specified directories.
3. **Run Script**: Execute the training and testing scripts in MATLAB to train the networks and classify the test images.

## Conclusion

This project demonstrates the application of transfer learning for recognizing handwritten Kannada characters. By leveraging pre-trained models, we achieve high accuracy and robust classification performance.
