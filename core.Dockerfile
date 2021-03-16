FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
	software-properties-common \
	ca-certificates
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros-latest.list
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt-get update && apt-get install -y \
	ros-noetic-ros-base

EXPOSE 11311

ENTRYPOINT ["bash", "-c", "source /opt/ros/noetic/setup.bash && eval \"${@:2}\""]
CMD roscore
