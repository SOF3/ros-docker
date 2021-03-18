#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
import time

def handler(msg):
    rospy.loginfo("Received message at {}: {}".format(time.ctime(), msg))

rospy.init_node("reader", xmlrpc_port=22920, tcpros_port=22921)
pub = rospy.Subscriber("/talk", String, handler)
rospy.spin()
