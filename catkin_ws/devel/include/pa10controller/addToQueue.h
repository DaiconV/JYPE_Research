// Generated by gencpp from file pa10controller/addToQueue.msg
// DO NOT EDIT!


#ifndef PA10CONTROLLER_MESSAGE_ADDTOQUEUE_H
#define PA10CONTROLLER_MESSAGE_ADDTOQUEUE_H

#include <ros/service_traits.h>


#include <pa10controller/addToQueueRequest.h>
#include <pa10controller/addToQueueResponse.h>


namespace pa10controller
{

struct addToQueue
{

typedef addToQueueRequest Request;
typedef addToQueueResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct addToQueue
} // namespace pa10controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pa10controller::addToQueue > {
  static const char* value()
  {
    return "3c31d885a63f71726d73c88c92dde354";
  }

  static const char* value(const ::pa10controller::addToQueue&) { return value(); }
};

template<>
struct DataType< ::pa10controller::addToQueue > {
  static const char* value()
  {
    return "pa10controller/addToQueue";
  }

  static const char* value(const ::pa10controller::addToQueue&) { return value(); }
};


// service_traits::MD5Sum< ::pa10controller::addToQueueRequest> should match 
// service_traits::MD5Sum< ::pa10controller::addToQueue > 
template<>
struct MD5Sum< ::pa10controller::addToQueueRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pa10controller::addToQueue >::value();
  }
  static const char* value(const ::pa10controller::addToQueueRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pa10controller::addToQueueRequest> should match 
// service_traits::DataType< ::pa10controller::addToQueue > 
template<>
struct DataType< ::pa10controller::addToQueueRequest>
{
  static const char* value()
  {
    return DataType< ::pa10controller::addToQueue >::value();
  }
  static const char* value(const ::pa10controller::addToQueueRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pa10controller::addToQueueResponse> should match 
// service_traits::MD5Sum< ::pa10controller::addToQueue > 
template<>
struct MD5Sum< ::pa10controller::addToQueueResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pa10controller::addToQueue >::value();
  }
  static const char* value(const ::pa10controller::addToQueueResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pa10controller::addToQueueResponse> should match 
// service_traits::DataType< ::pa10controller::addToQueue > 
template<>
struct DataType< ::pa10controller::addToQueueResponse>
{
  static const char* value()
  {
    return DataType< ::pa10controller::addToQueue >::value();
  }
  static const char* value(const ::pa10controller::addToQueueResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PA10CONTROLLER_MESSAGE_ADDTOQUEUE_H
