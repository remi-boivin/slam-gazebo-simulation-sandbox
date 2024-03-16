#!/bin/bash

. /ros2_ws/install/setup.bash
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/ros2_ws/install/cpp_pubsub/lib/cpp_pubsub ros2 run cpp_pubsub talker