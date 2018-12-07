// Generated by gencpp from file pa10controller/startPA10Response.msg
// DO NOT EDIT!


#ifndef PA10CONTROLLER_MESSAGE_STARTPA10RESPONSE_H
#define PA10CONTROLLER_MESSAGE_STARTPA10RESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pa10controller
{
template <class ContainerAllocator>
struct startPA10Response_
{
  typedef startPA10Response_<ContainerAllocator> Type;

  startPA10Response_()
    : complete(false)  {
    }
  startPA10Response_(const ContainerAllocator& _alloc)
    : complete(false)  {
  (void)_alloc;
    }



   typedef uint8_t _complete_type;
  _complete_type complete;





  typedef boost::shared_ptr< ::pa10controller::startPA10Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pa10controller::startPA10Response_<ContainerAllocator> const> ConstPtr;

}; // struct startPA10Response_

typedef ::pa10controller::startPA10Response_<std::allocator<void> > startPA10Response;

typedef boost::shared_ptr< ::pa10controller::startPA10Response > startPA10ResponsePtr;
typedef boost::shared_ptr< ::pa10controller::startPA10Response const> startPA10ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pa10controller::startPA10Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pa10controller::startPA10Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pa10controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pa10controller::startPA10Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pa10controller::startPA10Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pa10controller::startPA10Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pa10controller::startPA10Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pa10controller::startPA10Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pa10controller::startPA10Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pa10controller::startPA10Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d8061d2347621a6ed88451e28811cc7";
  }

  static const char* value(const ::pa10controller::startPA10Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d8061d2347621a6ULL;
  static const uint64_t static_value2 = 0xed88451e28811cc7ULL;
};

template<class ContainerAllocator>
struct DataType< ::pa10controller::startPA10Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pa10controller/startPA10Response";
  }

  static const char* value(const ::pa10controller::startPA10Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pa10controller::startPA10Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool complete\n\
\n\
";
  }

  static const char* value(const ::pa10controller::startPA10Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pa10controller::startPA10Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.complete);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct startPA10Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pa10controller::startPA10Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pa10controller::startPA10Response_<ContainerAllocator>& v)
  {
    s << indent << "complete: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.complete);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PA10CONTROLLER_MESSAGE_STARTPA10RESPONSE_H
