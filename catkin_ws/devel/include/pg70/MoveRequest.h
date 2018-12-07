// Generated by gencpp from file pg70/MoveRequest.msg
// DO NOT EDIT!


#ifndef PG70_MESSAGE_MOVEREQUEST_H
#define PG70_MESSAGE_MOVEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pg70
{
template <class ContainerAllocator>
struct MoveRequest_
{
  typedef MoveRequest_<ContainerAllocator> Type;

  MoveRequest_()
    : pos(0.0)  {
    }
  MoveRequest_(const ContainerAllocator& _alloc)
    : pos(0.0)  {
  (void)_alloc;
    }



   typedef float _pos_type;
  _pos_type pos;





  typedef boost::shared_ptr< ::pg70::MoveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pg70::MoveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveRequest_

typedef ::pg70::MoveRequest_<std::allocator<void> > MoveRequest;

typedef boost::shared_ptr< ::pg70::MoveRequest > MoveRequestPtr;
typedef boost::shared_ptr< ::pg70::MoveRequest const> MoveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pg70::MoveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pg70::MoveRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pg70

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pg70::MoveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pg70::MoveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pg70::MoveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pg70::MoveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pg70::MoveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pg70::MoveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pg70::MoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6fb6507bc71350dd1c10d16c76b741e";
  }

  static const char* value(const ::pg70::MoveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6fb6507bc71350dULL;
  static const uint64_t static_value2 = 0xd1c10d16c76b741eULL;
};

template<class ContainerAllocator>
struct DataType< ::pg70::MoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pg70/MoveRequest";
  }

  static const char* value(const ::pg70::MoveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pg70::MoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float32 pos\n\
";
  }

  static const char* value(const ::pg70::MoveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pg70::MoveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pg70::MoveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pg70::MoveRequest_<ContainerAllocator>& v)
  {
    s << indent << "pos: ";
    Printer<float>::stream(s, indent + "  ", v.pos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PG70_MESSAGE_MOVEREQUEST_H