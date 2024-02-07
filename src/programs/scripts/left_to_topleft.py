#!/usr/bin/env python
import rospy
from sensor_msgs.msg import JointState
from trajectory_planner.srv import *

START = [270.0, -30.0, 90.0, 0.0, -90.0, 0.0]
GOAL = [170.0, 120.0, 80.0, 0.0, 0.0, -90.0]


class MirobotProgram:
    def __init__(self):
        rospy.wait_for_service('/MirobotServer/GetPoseCmd')
        rospy.wait_for_service('/MirobotServer/SetCartAbsoluteCmd')
        self.req_home = rospy.ServiceProxy('/MirobotServer/SetHomeCmd', SetHomeCmd)
        self.req_abs_cart = rospy.ServiceProxy('/MirobotServer/SetCartAbsoluteCmd', SetCartCmd)
        self.req_rel_cart = rospy.ServiceProxy('/MirobotServer/SetCartRelativeCmd', SetCartCmd)
        self.req_suctioncup = rospy.ServiceProxy('/MirobotServer/SetGcodeCmd', SetGcodeCmd)
        self.program()

    def program(self):
        self.req_home()
        self.move_to(START[0], START[1], START[2], START[3], START[4], START[5])
        self.suctioncup_on()
        self.move(0, 0, -20, 0, 0, 0)
        self.move(0, 0, 20, 0, 0, 0)
        self.move_to(GOAL[0], GOAL[1], GOAL[2], GOAL[3], GOAL[4], GOAL[5])
        self.move(0, -20, 0, 0, 0, 0)
        self.suctioncup_off()
        self.move(0, 20, 0, 0, 0, 0)

    def move_to(self, x, y, z, a, b, c):
        req = SetCartCmdRequest()
        req.x = x
        req.y = y
        req.z = z
        req.a = a
        req.b = b
        req.c = c
        req.speed = 100
        return self.req_abs_cart(req)
    
    def move(self, x, y, z, a, b, c):
        req = SetCartCmdRequest()
        req.x = x
        req.y = y
        req.z = z
        req.a = a
        req.b = b
        req.c = c
        req.speed = 100
        return self.req_rel_cart(req)


    def suctioncup_on(self):
        req = SetGcodeCmdRequest()
        req.gcode = "M3S 1000"
        return self.req_suctioncup(req)
    
    def suctioncup_off(self):
        req = SetGcodeCmdRequest()
        req.gcode = "M3S 0"
        return self.req_suctioncup(req)

if __name__ == '__main__':
    try:
        MirobotProgram()
    except rospy.ROSInterruptException:
        pass 

