# 🖼️ Image Classification Using Convolutional Neural Networks (CNN) in MATLAB

## 📌 Project Overview

This project presents the implementation of an **Image Classification System** using **Convolutional Neural Networks (CNNs)** in **MATLAB**. The objective is to automatically classify handwritten digit images by learning hierarchical image features through deep learning.

The project demonstrates the complete workflow of image classification, including dataset preparation, preprocessing, CNN architecture design, model training, evaluation, and visualization of results using MATLAB's Deep Learning Toolbox.

The performance of the CNN model is evaluated using training accuracy, validation accuracy, confusion matrix, class-wise accuracy, and sample image predictions.

---

# 📖 Abstract

Image classification is one of the most important applications of computer vision. Traditional machine learning methods require manual feature extraction, whereas Convolutional Neural Networks (CNNs) automatically learn important image features directly from raw image data.

In this project, a CNN model is implemented in MATLAB for image classification using the MNIST handwritten digit dataset. The model is trained and evaluated using various performance metrics, including accuracy, confusion matrix, and class-wise performance.

The experimental results demonstrate that CNNs provide high classification accuracy and effectively recognize handwritten digits. MATLAB's Deep Learning Toolbox offers an efficient platform for implementing and evaluating deep learning models.

---

# 🎯 Objectives

- Understand the fundamentals of image classification.
- Study the architecture and working of Convolutional Neural Networks.
- Implement a CNN model using MATLAB.
- Perform image preprocessing and augmentation.
- Train the CNN using the MNIST dataset.
- Evaluate model performance using different evaluation metrics.
- Visualize classification results.
- Analyze the strengths, limitations, and future improvements of the model.

---

# 🚀 Features

- Image Classification using CNN
- MATLAB Deep Learning Toolbox
- MNIST Handwritten Digit Dataset
- Image Preprocessing
- Data Augmentation
- CNN Architecture Design
- Model Training and Validation
- Confusion Matrix Visualization
- Class-wise Accuracy Analysis
- Sample Prediction Visualization

---

# 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| MATLAB | Programming Environment |
| Deep Learning Toolbox | CNN Model Development |
| Image Processing Toolbox | Image Preprocessing |
| MNIST Dataset | Image Classification Dataset |

---

# 📂 Dataset

The project uses the **MNIST Handwritten Digit Dataset**, one of the most widely used benchmark datasets for image classification.

### Dataset Details

- **Dataset:** MNIST
- **Total Images:** 70,000
- **Training Images:** 60,000
- **Testing Images:** 10,000
- **Image Size:** 28 × 28 pixels
- **Image Type:** Grayscale
- **Number of Classes:** 10 (Digits 0–9)

---

# 🧹 Data Preprocessing

The following preprocessing steps were performed before training the CNN model:

- Image loading using `imageDatastore()`
- Dataset splitting
- Image resizing
- Pixel normalization
- Image augmentation

### Data Augmentation Techniques

- Random Rotation
- Horizontal Reflection
- Scaling
- Shearing
- Brightness Adjustment

These techniques help improve the model's ability to generalize to unseen data.

---

# 🧠 CNN Architecture

The implemented CNN consists of the following layers:

| Layer | Description |
|--------|-------------|
| Input Layer | 28 × 28 × 1 Grayscale Image |
| Convolution Layer | Feature Extraction |
| Batch Normalization | Normalize Activations |
| ReLU Layer | Non-linear Activation |
| Max Pooling Layer | Downsampling |
| Convolution Layer | Higher-Level Feature Extraction |
| Batch Normalization | Normalize Features |
| ReLU Layer | Activation |
| Max Pooling Layer | Spatial Reduction |
| Convolution Layer | Deep Feature Learning |
| Batch Normalization | Normalize Output |
| ReLU Layer | Activation |
| Fully Connected Layer | Classification |
| Softmax Layer | Probability Distribution |
| Classification Layer | Final Prediction |

---

# 🔄 Project Workflow

```text
Dataset
   │
   ▼
Image Loading
   │
   ▼
Preprocessing
   │
   ▼
Data Augmentation
   │
   ▼
CNN Architecture
   │
   ▼
Model Training
   │
   ▼
Model Testing
   │
   ▼
Prediction
   │
   ▼
Performance Evaluation
```

---

# 📌 MATLAB Functions Used

The following MATLAB functions were used in this project:

- imageDatastore()
- splitEachLabel()
- imageDataAugmenter()
- augmentedImageDatastore()
- imageInputLayer()
- convolution2dLayer()
- batchNormalizationLayer()
- reluLayer()
- maxPooling2dLayer()
- fullyConnectedLayer()
- softmaxLayer()
- classificationLayer()
- classify()
- confusionchart()
- confusionmat()
- imshow()
- subplot()
- randperm()

---

# 📊 Model Performance

The CNN model achieved the following results:

| Metric | Result |
|---------|---------|
| Training Accuracy | ~98% |
| Validation Accuracy | ~96% |
| Number of Epochs | 10 |

The training accuracy improved steadily during training, while validation accuracy remained consistent, indicating effective learning without significant overfitting.

---

# 📈 Performance Evaluation

The trained model was evaluated using:

- Training Accuracy
- Validation Accuracy
- Confusion Matrix
- Class-wise Accuracy
- Sample Image Predictions

These evaluation metrics provide a comprehensive understanding of the model's performance.

---

# 📉 Class-wise Accuracy

| Digit | Accuracy |
|--------|----------|
| 0 | 98.5% |
| 1 | 99.1% |
| 2 | 97.8% |
| 3 | 96.9% |
| 4 | 98.3% |
| 5 | 96.5% |
| 6 | 97.2% |
| 7 | 98.8% |
| 8 | 95.9% |
| 9 | 96.7% |

---

# 📷 Results

The CNN model successfully classified handwritten digit images with high accuracy.

The generated outputs include:

- Training Accuracy Graph
- Confusion Matrix
- Class-wise Accuracy
- Sample Prediction Images
- Augmented Images

---

# 💪 Strengths

- High classification accuracy
- Automatic feature extraction
- Efficient preprocessing
- Robust CNN architecture
- Easy implementation using MATLAB
- Effective visualization tools

---

# ⚠️ Limitations

- Relatively shallow CNN architecture
- CPU-based training
- Limited dataset diversity
- No transfer learning
- Limited hyperparameter optimization

---

# 🔮 Future Improvements

The project can be extended by:

- Using pretrained models such as AlexNet, VGG-16, or ResNet
- Implementing transfer learning
- Using larger datasets
- Applying advanced augmentation techniques
- Performing hyperparameter optimization
- Training using GPU acceleration
- Developing real-time image classification applications

---

# 📁 Repository Structure

```text
Image-Classification-Using-CNN-MATLAB/
│
├── MATLAB_Code/
│   ├── dataset_loading.m
│   ├── preprocessing.m
│   ├── augmentation.m
│   ├── cnn_architecture.m
│   ├── confusion_matrix.m
│   ├── classwise_accuracy.m
│   └── sample_predictions.m
│
├── Images/
│   ├── cnn_architecture.png
│   ├── confusion_matrix.png
│   ├── training_accuracy.png
│   ├── sample_predictions.png
│   └── augmentation.png
│
├── Project_Report.pdf
├── README.md
├── LICENSE
└── .gitignore
```

---

# ▶️ How to Run

1. Install MATLAB.
2. Install the Deep Learning Toolbox.
3. Clone or download this repository.
4. Open MATLAB.
5. Load the MNIST dataset.
6. Run the MATLAB scripts.
7. Train the CNN model.
8. Evaluate the trained model.
9. Visualize the classification results.

---

# 📚 References

1. LeCun, Y., Bottou, L., Bengio, Y., & Haffner, P. *Gradient-Based Learning Applied to Document Recognition.*
2. MATLAB Documentation – Deep Learning Toolbox.
3. MATLAB Documentation – trainNetwork().
4. Machine Learning Mastery – CNN Tutorials.
5. Simonyan, K., & Zisserman, A. *Very Deep Convolutional Networks for Large-Scale Image Recognition.*

---

# 👩‍💻 Author

**Sarayu Ikkurthi**

**Project:** Image Classification Using CNN in MATLAB

B.Tech – Computer Science and Engineering

---

## ⭐ Support

If you found this project helpful, consider giving it a ⭐ on GitHub.
