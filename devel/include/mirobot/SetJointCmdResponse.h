// Generated by gencpp from file mirobot/SetJointCmdResponse.msg
// DO NOT EDIT!


#ifndef MIROBOT_MESSAGE_SETJOINTCMDRESPONSE_H
#define MIROBOT_MESSAGE_SETJOINTCMDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mirobot
{
template <class ContainerAllocator>
struct SetJointCmdResponse_
{
  typedef SetJointCmdResponse_<ContainerAllocator> Type;

  SetJointCmdResponse_()
    : result(0)  {
    }
  SetJointCmdResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::mirobot::SetJointCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mirobot::SetJointCmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetJointCmdResponse_

typedef ::mirobot::SetJointCmdResponse_<std::allocator<void> > SetJointCmdResponse;

typedef boost::shared_ptr< ::mirobot::SetJointCmdResponse > SetJointCmdResponsePtr;
typedef boost::shared_ptr< ::mirobot::SetJointCmdResponse const> SetJointCmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mirobot::SetJointCmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mirobot::SetJointCmdResponse_<ContainerAllocator1> & lhs, const ::mirobot::SetJointCmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mirobot::SetJointCmdResponse_<ContainerAllocator1> & lhs, const ::mirobot::SetJointCmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mirobot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mirobot::SetJointCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mirobot::SetJointCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mirobot::SetJointCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034a8e20d6a306665e3a5b340fab3f09";
  }

  static const char* value(const ::mirobot::SetJointCmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034a8e20d6a30666ULL;
  static const uint64_t static_value2 = 0x5e3a5b340fab3f09ULL;
};

template<class ContainerAllocator>
struct DataType< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mirobot/SetJointCmdResponse";
  }

  static const char* value(const ::mirobot::SetJointCmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result\n"
;
  }

  static const char* value(const ::mirobot::SetJointCmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetJointCmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mirobot::SetJointCmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mirobot::SetJointCmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIROBOT_MESSAGE_SETJOINTCMDRESPONSE_H
