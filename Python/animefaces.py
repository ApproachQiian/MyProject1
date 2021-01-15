# coding=utf-8
import tensorflow as tf
import matplotlib.pyplot as plt
import random
import os
os.environ["CUDA_VISIBLE_DEVICES"] = "0,1"  # 指定第一块GPU可用


def generate_and_save_images(model, test_input):
    predictions = model(test_input, training=False)
    fig = plt.figure(figsize=(6, 6))
    for i in range(predictions.shape[0]):
        plt.subplot(2, 2, i + 1)  # 从1开始
        plt.imshow((predictions[i, :, :, :] + 1) / 2)
        plt.axis('off')
    filepath = f"E:/Datesets/animefaces/{random.randint(1, 999999)}.png"
    plt.savefig(filepath)
    return filepath


if __name__ == '__main__':
    try:
        noise_dim = 100
        num_exp_to_generate = 4
        seed = tf.random.normal([num_exp_to_generate, noise_dim])
        model = tf.keras.models.load_model('E:/FilesOfScience/Animefaces-DCGan/save/DCGAN_cartoon_64_1500.h5')
        imagePath = generate_and_save_images(model, seed)
        print(f'{imagePath}')
    except Exception as e:
        print(str(e))

