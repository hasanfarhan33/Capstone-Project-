import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt

#Adding the data set
fashion_mnist = tf.keras.datasets.fashion_mnist

(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat', 'Sandal',
               'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

print(train_images.shape)


#Preprocessing the data
plt.figure()
plt.imshow(train_images[0])
plt.colorbar()
plt.grid(False)
plt.show()

#Scaling down data
train_images = train_images/255.0
test_images = test_images/255.0

#Displaying first 25 images from the training set
# plt.figure(figsize=(10, 10))
# for i in range(25):
#     plt.subplot(5, 5, i+1)
#     plt.xticks([])
#     plt.yticks([])
#     plt.grid(False)
#     plt.imshow(train_images[i], cmap=plt.cm.binary)
#     plt.xlabel(class_names[train_labels[i]])
# plt.show()

#Creating a model
model = tf.keras.Sequential([
    tf.keras.layers.Flatten(input_shape=(28, 28)), #Transforms 2D array to 1D array of 28 * 28 pixels
    tf.keras.layers.Dense(128, activation='relu'), #128 nodes
    tf.keras.layers.Dense(10)
])

#Compiling the model
model.compile(optimizer='adam',
              loss = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics = ['accuracy'])
#Training model
model.fit(train_images, train_labels, epochs=10)

#Evaluate the accuracy
test_loss, test_acc = model.evaluate(test_images, test_labels, verbose=2)
print("\n Test Accuracy = ", test_acc)

#Probability model
probability_model = tf.keras.Sequential([model, tf.keras.layers.Softmax()])
predictions = probability_model.predict(test_images)
print(predictions[0])
print(np.argmax(predictions[0]))

print(test_labels[0])

