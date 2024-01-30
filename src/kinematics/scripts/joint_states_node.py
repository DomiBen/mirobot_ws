 #!/usr/bin/env python
import rospy
from sensor_msgs.msg import JointState
from trajectory_planner.srv import *

class JointStatePublisher:
    def __init__(self):
        rospy.init_node('joint_state_publisher')
        rospy.wait_for_service('/MirobotServer/GetPoseCmd')
        self.pub = rospy.Publisher('joint_states', JointState, queue_size=10)
        self.sequence = 0
        rate = rospy.Rate(100)
        while not rospy.is_shutdown():
            self.publishJointStates()
            rate.sleep()
        

    def publishJointStates(self):    
        get_pose = rospy.ServiceProxy('/MirobotServer/GetPoseCmd', GetPoseCmd)
        req = GetPoseCmdRequest()
        pose_response = get_pose(req)
        joint_state = JointState()
        joint_state.header.stamp = rospy.Time.now()
        joint_state.name = ["Joint1", "Joint2", "Joint3", "Joint4", "Joint5", "Joint6"]
        joint_state.position = [pose_response.jointAngle_1, pose_response.jointAngle_2, pose_response.jointAngle_3, pose_response.jointAngle_4, pose_response.jointAngle_5, pose_response.jointAngle_6]
        joint_state.velocity = []
        joint_state.effort = []
        joint_state.header.seq = self.sequence
        self.sequence = self.sequence + 1
        joint_state.header.frame_id = 'base_link'
        self.pub.publish(joint_state)
    


if __name__ == '__main__':
    try:
        JointStatePublisher()
    except rospy.ROSInterruptException:
        pass 