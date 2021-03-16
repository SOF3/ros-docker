FROM m2/core

RUN apt-get update && apt-get install -y build-essential cmake
SHELL ["bash", "-c", "source /opt/ros/noetic/setup.bash && eval \"$0\""]

RUN mkdir -p /catkin/src
WORKDIR /catkin/src

RUN catkin_init_workspace

WORKDIR /catkin

RUN true > /root/.bashrc
RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc
RUN echo "source /catkin/devel/setup.bash" >> /root/.bashrc

EXPOSE 22920
EXPOSE 22921

ENTRYPOINT ["bash", "-c", "source /opt/ros/noetic/setup.bash && source /catkin/devel/setup.bash && rosrun \"$0\" \"$@\""]
