// Auto-generated. Do not edit!

// (in-package pa10controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class addToQueueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gripper = null;
      this.endOfQueue = null;
      this.positions = null;
      this.commands = null;
    }
    else {
      if (initObj.hasOwnProperty('gripper')) {
        this.gripper = initObj.gripper
      }
      else {
        this.gripper = false;
      }
      if (initObj.hasOwnProperty('endOfQueue')) {
        this.endOfQueue = initObj.endOfQueue
      }
      else {
        this.endOfQueue = false;
      }
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type addToQueueRequest
    // Serialize message field [gripper]
    bufferOffset = _serializer.bool(obj.gripper, buffer, bufferOffset);
    // Serialize message field [endOfQueue]
    bufferOffset = _serializer.bool(obj.endOfQueue, buffer, bufferOffset);
    // Check that the constant length array field [positions] has the right length
    if (obj.positions.length !== 7) {
      throw new Error('Unable to serialize array field positions - length must be 7')
    }
    // Serialize message field [positions]
    bufferOffset = _arraySerializer.float32(obj.positions, buffer, bufferOffset, 7);
    // Check that the constant length array field [commands] has the right length
    if (obj.commands.length !== 7) {
      throw new Error('Unable to serialize array field commands - length must be 7')
    }
    // Serialize message field [commands]
    bufferOffset = _arraySerializer.float32(obj.commands, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type addToQueueRequest
    let len;
    let data = new addToQueueRequest(null);
    // Deserialize message field [gripper]
    data.gripper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [endOfQueue]
    data.endOfQueue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [commands]
    data.commands = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 58;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pa10controller/addToQueueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb607eed6d73397ca138f7e25e56c188';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    bool gripper
    bool endOfQueue
    float32[7] positions
    float32[7] commands
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new addToQueueRequest(null);
    if (msg.gripper !== undefined) {
      resolved.gripper = msg.gripper;
    }
    else {
      resolved.gripper = false
    }

    if (msg.endOfQueue !== undefined) {
      resolved.endOfQueue = msg.endOfQueue;
    }
    else {
      resolved.endOfQueue = false
    }

    if (msg.positions !== undefined) {
      resolved.positions = msg.positions;
    }
    else {
      resolved.positions = new Array(7).fill(0)
    }

    if (msg.commands !== undefined) {
      resolved.commands = msg.commands;
    }
    else {
      resolved.commands = new Array(7).fill(0)
    }

    return resolved;
    }
};

class addToQueueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sucess = null;
    }
    else {
      if (initObj.hasOwnProperty('sucess')) {
        this.sucess = initObj.sucess
      }
      else {
        this.sucess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type addToQueueResponse
    // Serialize message field [sucess]
    bufferOffset = _serializer.bool(obj.sucess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type addToQueueResponse
    let len;
    let data = new addToQueueResponse(null);
    // Deserialize message field [sucess]
    data.sucess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pa10controller/addToQueueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e8ad2f62d0edf01ac96b1e92459b490';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    bool sucess
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new addToQueueResponse(null);
    if (msg.sucess !== undefined) {
      resolved.sucess = msg.sucess;
    }
    else {
      resolved.sucess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: addToQueueRequest,
  Response: addToQueueResponse,
  md5sum() { return '3c31d885a63f71726d73c88c92dde354'; },
  datatype() { return 'pa10controller/addToQueue'; }
};
