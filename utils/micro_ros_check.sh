#!/bin/bash

# Execute the static library generation tool.
# Compiler flags will retrieved automatically from your Makefile and user
# will be prompted to check if they are correct.
docker pull microros/micro_ros_static_library_builder:humble
docker run -it --rm -v $(pwd):/project --env MICROROS_LIBRARY_FOLDER=micro_ros_stm32cubemx_utils/microros_static_library microros/micro_ros_static_library_builder:humble