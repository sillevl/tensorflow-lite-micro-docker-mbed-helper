
# Docker container with Tensorflow and mbed-cli

Docker container for helping to generate Tensorflow Lite Micro examples for mbed.

Create a docker image:

```sh
docker build --tag tf-lite-mbed .
```

Running the command below will generate the hello world example for mbed in the current directory. (it will create a `/tflite-micro` directory with the generated files)

```sh
docker run -it --rm -v ${pwd}:/tensorflow/hello_world/ tf-lite-mbed python3 tensorflow/lite/micro/tools/project_generation/create_tflm_tree.py --makefile_options OPTIMIZED_KERNEL_DIR=cmsis_nn --examples hello_world /tensorflow/hello_world/tflite-micro
```
