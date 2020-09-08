
# Docker container with Tensorflow and mbed-cli

Docker container for helping to generate Tensorflow Lite Micro examples for mbed.

Running the command below will generate the hello world example for mbed in the current directory. (it will create a `/linux_x86_64/prj/hello_world/mbed` directory)

```sh
docker run -it --rm -v ${pwd}:/tensorflow/tensorflow/lite/micro/tools/make/gen/ tf-lite-mbed make -f tensorflow/lite/micro/tools/make/Makefile generate_hello_world_mbed_project
```
