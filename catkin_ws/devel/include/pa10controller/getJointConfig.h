// Generated by gencpp from file pa10controller/getJointConfig.msg
// DO NOT EDIT!


#ifndef PA10CONTROLLER_MESSAGE_GETJOINTCONFIG_H
#define PA10CONTROLLER_MESSAGE_GETJOINTCONFIG_H

#include <ros/service_traits.h>


#include <pa10controller/getJointConfigRequest.h>
#include <pa10controller/getJointConfigResponse.h>


namespace pa10controller
{

struct getJointConfig
{

typedef getJointConfigRequest Request;
typedef getJointConfigResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct getJointConfig
} // namespace pa10controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pa10controller::getJointConfig > {
  static const char* value()
  {
    return "8b59e38f5296df3482c671e5301fa089";
  }

  static const char* value(const ::pa10controller::getJointConfig&) { return value(); }
};

template<>
struct DataType< ::pa10controller::getJointConfig > {
  static const char* value()
  {
    return "pa10controller/getJointConfig";
  }

  static const char* value(const ::pa10controller::getJointConfig&) { return value(); }
};


// service_traits::MD5Sum< ::pa10controller::getJointConfigRequest> should match 
// service_traits::MD5Sum< ::pa10controller::getJointConfig > 
template<>
struct MD5Sum< ::pa10controller::getJointConfigRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pa10controller::getJointConfig >::value();
  }
  static const char* value(const ::pa10controller::getJointConfigRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pa10controller::getJointConfigRequest> should match 
// service_traits::DataType< ::pa10controller::getJointConfig > 
template<>
struct DataType< ::pa10controller::getJointConfigRequest>
{
  static const char* value()
  {
    return DataType< ::pa10controller::getJointConfig >::value();
  }
  static const char* value(const ::pa10controller::getJointConfigRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pa10controller::getJointConfigResponse> should match 
// service_traits::MD5Sum< ::pa10controller::getJointConfig > 
template<>
struct MD5Sum< ::pa10controller::getJointConfigResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pa10controller::getJointConfig >::value();
  }
  static const char* value(const ::pa10controller::getJointConfigResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pa10controller::getJointConfigResponse> should match 
// service_traits::DataType< ::pa10controller::getJointConfig > 
template<>
struct DataType< ::pa10controller::getJointConfigResponse>
{
  static const char* value()
  {
    return DataType< ::pa10controller::getJointConfig >::value();
  }
  static const char* value(const ::pa10controller::getJointConfigResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PA10CONTROLLER_MESSAGE_GETJOINTCONFIG_H
