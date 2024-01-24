// Generated by gencpp from file mirobot/SetGcodeCmd.msg
// DO NOT EDIT!


#ifndef MIROBOT_MESSAGE_SETGCODECMD_H
#define MIROBOT_MESSAGE_SETGCODECMD_H

#include <ros/service_traits.h>


#include <mirobot/SetGcodeCmdRequest.h>
#include <mirobot/SetGcodeCmdResponse.h>


namespace mirobot
{

struct SetGcodeCmd
{

typedef SetGcodeCmdRequest Request;
typedef SetGcodeCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetGcodeCmd
} // namespace mirobot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mirobot::SetGcodeCmd > {
  static const char* value()
  {
    return "063984922b4c75aaeda3d4d697e63bac";
  }

  static const char* value(const ::mirobot::SetGcodeCmd&) { return value(); }
};

template<>
struct DataType< ::mirobot::SetGcodeCmd > {
  static const char* value()
  {
    return "mirobot/SetGcodeCmd";
  }

  static const char* value(const ::mirobot::SetGcodeCmd&) { return value(); }
};


// service_traits::MD5Sum< ::mirobot::SetGcodeCmdRequest> should match
// service_traits::MD5Sum< ::mirobot::SetGcodeCmd >
template<>
struct MD5Sum< ::mirobot::SetGcodeCmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mirobot::SetGcodeCmd >::value();
  }
  static const char* value(const ::mirobot::SetGcodeCmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mirobot::SetGcodeCmdRequest> should match
// service_traits::DataType< ::mirobot::SetGcodeCmd >
template<>
struct DataType< ::mirobot::SetGcodeCmdRequest>
{
  static const char* value()
  {
    return DataType< ::mirobot::SetGcodeCmd >::value();
  }
  static const char* value(const ::mirobot::SetGcodeCmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mirobot::SetGcodeCmdResponse> should match
// service_traits::MD5Sum< ::mirobot::SetGcodeCmd >
template<>
struct MD5Sum< ::mirobot::SetGcodeCmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mirobot::SetGcodeCmd >::value();
  }
  static const char* value(const ::mirobot::SetGcodeCmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mirobot::SetGcodeCmdResponse> should match
// service_traits::DataType< ::mirobot::SetGcodeCmd >
template<>
struct DataType< ::mirobot::SetGcodeCmdResponse>
{
  static const char* value()
  {
    return DataType< ::mirobot::SetGcodeCmd >::value();
  }
  static const char* value(const ::mirobot::SetGcodeCmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MIROBOT_MESSAGE_SETGCODECMD_H