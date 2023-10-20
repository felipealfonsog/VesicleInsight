# Install scikit-learn if you haven't already
# pip install scikit-learn

# Import the necessary libraries
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score, classification_report

# Assume you have a dataset X with features and a dataset Y with labels

# Split the dataset into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.2, random_state=42)

# Normalize the features to improve model performance
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

# Create a Support Vector Machine (SVM) classifier with a linear kernel and regularization parameter C=1.0
clf = SVC(kernel='linear', C=1.0)

# Train the model on the training set
clf.fit(X_train, y_train)

# Make predictions on the test set
predictions = clf.predict(X_test)

# Evaluate the model performance
accuracy = accuracy_score(y_test, predictions)
report = classification_report(y_test, predictions)

# Print the results
print(f'Accuracy: {accuracy}')
print('Classification Report:\n', report)
