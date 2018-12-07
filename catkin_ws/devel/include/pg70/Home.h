// Generated by gencpp from file pg70/Home.msg
// DO NOT EDIT!


#ifndef PG70_MESSAGE_HOME_H
#define PG70_MESSAGE_HOME_H

#include <ros/service_traits.h>


#include <pg70/HomeRequest.h>
#include <pg70/HomeResponse.h>


namespace pg70
{

struct Home
{

typedef HomeRequest Request;
typedef HomeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Home
} // namespace pg70


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pg70::Home > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::pg70::Home&) { return value(); }
};

template<>
struct DataType< ::pg70::Home > {
  static const char* value()
  {
    return "pg70/Home";
  }

  static const char* value(const ::pg70::Home&) { return value(); }
};


// service_traits::MD5Sum< ::pg70::HomeRequest> should match 
// service_traits::MD5Sum< ::pg70::Home > 
template<>
struct MD5Sum< ::pg70::HomeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pg70::Home >::value();
  }
  static const char* value(const ::pg70::HomeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pg70::HomeRequest> should match 
// service_traits::DataType< ::pg70::Home > 
template<>
struct DataType< ::pg70::HomeRequest>
{
  static const char* value()
  {
    return DataType< ::pg70::Home >::value();
  }
  static const char* value(const ::pg70::HomeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pg70::HomeResponse> should match 
// service_traits::MD5Sum< ::pg70::Home > 
template<>
struct MD5Sum< ::pg70::HomeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pg70::Home >::value();
  }
  static const char* value(const ::pg70::HomeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pg70::HomeResponse> should match 
// service_traits::DataType< ::pg70::Home > 
template<>
struct DataType< ::pg70::HomeResponse>
{
  static const char* value()
  {
    return DataType< ::pg70::Home >::value();
  }
  static const char* value(const ::pg70::HomeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PG70_MESSAGE_HOME_H
