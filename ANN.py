# Import required libraries
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

# Create the model
model = keras.Sequential()
model.add(layers.Dense(12, input_dim=8, activation='relu'))
model.add(layers.Dense(8, activation='relu'))
model.add(layers.Dense(1, activation='sigmoid'))

# Compile the model
model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])

# Load data
dataset = np.loadtxt("pima-indians-diabetes.csv", delimiter=",")
X = dataset[:,0:8]
y = dataset[:,8]

# Train the model
model.fit(X, y, epochs=150, batch_size=10)

# Evaluate the model
_, accuracy = model.evaluate(X, y)
print('Accuracy: %.2f' % (accuracy*100))
