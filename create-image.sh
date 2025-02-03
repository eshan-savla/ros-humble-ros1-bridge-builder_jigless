#!/bin/bash
echo ls -la ~/

docker build --build-arg ADD_custom_msgs=1 --build-arg ADD_ros_tutorials=0 --secret id=gitlab_token,src=$(echo ~)/.gitlab_token -t container-registry.gitlab.cc-asp.fraunhofer.de/multirobot/planner/jigless-planner:ros1_bridge_builder-1.0 .