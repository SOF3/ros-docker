#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

rospy.init_node("talker", xmlrpc_port=22920, tcpros_port=22921)
pub = rospy.Publisher("/talk", String)
rate = rospy.Rate(10)
while not rospy.is_shutdown():
    pub.publish("Hello")
    rate.sleep()
