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

class getJointConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getJointConfigRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getJointConfigRequest
    let len;
    let data = new getJointConfigRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pa10controller/getJointConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getJointConfigRequest(null);
    return resolved;
    }
};

class getJointConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.positions = null;
      this.commands = null;
    }
    else {
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
    // Serializes a message object of type getJointConfigResponse
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
    //deserializes a message object of type getJointConfigResponse
    let len;
    let data = new getJointConfigResponse(null);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [commands]
    data.commands = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pa10controller/getJointConfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b59e38f5296df3482c671e5301fa089';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float32[7] positions
    float32[7] commands
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getJointConfigResponse(null);
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

module.exports = {
  Request: getJointConfigRequest,
  Response: getJointConfigResponse,
  md5sum() { return '8b59e38f5296df3482c671e5301fa089'; },
  datatype() { return 'pa10controller/getJointConfig'; }
};
