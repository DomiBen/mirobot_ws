// Generated by gencpp from file mirobot/SetGcodeCmdResponse.msg
// DO NOT EDIT!


#ifndef MIROBOT_MESSAGE_SETGCODECMDRESPONSE_H
#define MIROBOT_MESSAGE_SETGCODECMDRESPONSE_H


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
struct SetGcodeCmdResponse_
{
  typedef SetGcodeCmdResponse_<ContainerAllocator> Type;

  SetGcodeCmdResponse_()
    : result(0)  {
    }
  SetGcodeCmdResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetGcodeCmdResponse_

typedef ::mirobot::SetGcodeCmdResponse_<std::allocator<void> > SetGcodeCmdResponse;

typedef boost::shared_ptr< ::mirobot::SetGcodeCmdResponse > SetGcodeCmdResponsePtr;
typedef boost::shared_ptr< ::mirobot::SetGcodeCmdResponse const> SetGcodeCmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator1> & lhs, const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator1> & lhs, const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mirobot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034a8e20d6a306665e3a5b340fab3f09";
  }

  static const char* value(const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034a8e20d6a30666ULL;
  static const uint64_t static_value2 = 0x5e3a5b340fab3f09ULL;
};

template<class ContainerAllocator>
struct DataType< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mirobot/SetGcodeCmdResponse";
  }

  static const char* value(const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result\n"
;
  }

  static const char* value(const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGcodeCmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mirobot::SetGcodeCmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mirobot::SetGcodeCmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIROBOT_MESSAGE_SETGCODECMDRESPONSE_H