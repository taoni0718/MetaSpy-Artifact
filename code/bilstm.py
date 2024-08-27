import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Bidirectional, LSTM, Dense, Dropout
from tensorflow.keras.optimizers import Adam

# Define the number of classes based on your specific task
# For example, for device type classification with 8 classes:
num_classes = 8

# Define the input shape, assuming the feature vectors are time-series data
# For instance, if each sliding window contains 100 time steps and each time step has 50 features:
input_shape = (100, 50)  # (time steps, features)

# Build the Bi-LSTM model
model = Sequential()

# Add the first Bi-LSTM layer with 128 units
model.add(Bidirectional(LSTM(128, return_sequences=True), input_shape=input_shape))

# Add the second Bi-LSTM layer with 128 units
model.add(Bidirectional(LSTM(128)))

# Add a dropout layer with 50% dropout rate
model.add(Dropout(0.5))

# Add a fully connected layer for classification
model.add(Dense(num_classes, activation='softmax'))

# Compile the model using Adam optimizer and cross-entropy loss
optimizer = Adam(learning_rate=0.01)
model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy'])

# Print the model summary
model.summary()

# Assuming X_train and y_train are your training data and labels
# y_train should be one-hot encoded for categorical classification

# Train the model
model.fit(X_train, y_train, epochs=100, batch_size=32, validation_split=0.2)
