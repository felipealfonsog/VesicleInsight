# spendwiseapp.py
'''


▒█░░▒█ █▀▀ █▀▀ ░▀░ █▀▀ █░░ █▀▀ ▀█▀ █▀▀▄ █▀▀ ░▀░ █▀▀▀ █░░█ ▀▀█▀▀ 
░▒█▒█░ █▀▀ ▀▀█ ▀█▀ █░░ █░░ █▀▀ ▒█░ █░░█ ▀▀█ ▀█▀ █░▀█ █▀▀█ ░░█░░ 
░░▀▄▀░ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▄█▄ ▀░░▀ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀░░▀ ░░▀░░

*************************************************
VesicleInsight: A program for detecting gallbladder cancer.
*************************************************
* Developed and engineered by:
* Felipe Alfonso Gonzalez <f.alfonso@res-ear.ch>
* Computer Science Engineer
* Chile
*************************************************
* Important Notes:
* - The application has been tested on Linux and macOS.
* - For Windows, additional configurations may be required.
* - Make sure to fulfill the prerequisites before running the application.
* - The database model may need to be adjusted to match your database setup.
* - For more information, please refer to the project documentation.
*************************************************
'''

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QPushButton, QLabel, QFileDialog
from PyQt5.QtGui import QImage, QPixmap
from PyQt5.QtCore import Qt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score, classification_report
import os
from PIL import Image
import numpy as np

class ImageClassifierApp(QWidget):
    def __init__(self):
        super().__init__()

        self.init_ui()

        # Placeholder for the model
        self.clf = None

    def init_ui(self):
        self.setWindowTitle('Image Classifier')
        self.setGeometry(100, 100, 600, 400)

        self.image_label = QLabel(self)
        self.image_label.setAlignment(Qt.AlignCenter)

        load_button = QPushButton('Load Image', self)
        load_button.clicked.connect(self.load_image)

        classify_button = QPushButton('Classify', self)
        classify_button.clicked.connect(self.classify_image)

        layout = QVBoxLayout()
        layout.addWidget(self.image_label)
        layout.addWidget(load_button)
        layout.addWidget(classify_button)

        self.setLayout(layout)

    def load_image(self):
        options = QFileDialog.Options()
        options |= QFileDialog.ReadOnly
        file_name, _ = QFileDialog.getOpenFileName(self, 'Open Image File', '', 'Images (*.png *.jpg *.bmp *.gif);;All Files (*)', options=options)

        if file_name:
            pixmap = QPixmap(file_name)
            pixmap = pixmap.scaledToWidth(400)
            self.image_label.setPixmap(pixmap)

            # Load the image for classification
            img = Image.open(file_name)
            img_array = np.array(img)
            img_array_flat = img_array.reshape(1, -1)

            # Placeholder: Normalize the features (similar to training data)
            img_array_flat = StandardScaler().fit_transform(img_array_flat)

            # Placeholder: Ensure that the model is trained before attempting classification
            if self.clf is not None:
                # Placeholder: Use the trained model to predict
                prediction = self.clf.predict(img_array_flat)
                print(f'Prediction: {prediction}')

    def classify_image(self):
        # Placeholder: Training the model (you should replace this with your training logic)
        # Example using a simple 2-class dataset (replace with your own data)
        X, y = np.random.rand(100, 100), np.random.randint(0, 2, 100)
        X_train, _, y_train, _ = train_test_split(X, y, test_size=0.2, random_state=42)
        self.clf = SVC(kernel='linear', C=1.0)
        self.clf.fit(X_train, y_train)

def main():
    app = QApplication(sys.argv)
    window = ImageClassifierApp()
    window.show()
    sys.exit(app.exec_())

if __name__ == '__main__':
    main()
