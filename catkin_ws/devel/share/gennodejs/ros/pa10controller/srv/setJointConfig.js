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

class setJointConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gripper = null;
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
    // Serializes a message object of type setJointConfigRequest
    // Serialize message field [gripper]
    bufferOffset = _serializer.bool(obj.gripper, buffer, bufferOffset);
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
    //deserializes a message object of type setJointConfigRequest
    let len;
    let data = new setJointConfigRequest(null);
    // Deserialize message field [gripper]
    data.gripper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [commands]
    data.commands = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pa10controller/setJointConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46282454b294ac7d0c48434b1d003f7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    bool gripper
    float32[7] positions
    float32[7] commands
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setJointConfigRequest(null);
    if (msg.gripper !== undefined) {
      resolved.gripper = msg.gripper;
    }
    else {
      resolved.gripper = false
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

class setJointConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setJointConfigResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setJointConfigResponse
    let len;
    let data = new setJointConfigResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pa10controller/setJointConfigResponse';
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
    const resolved = new setJointConfigResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: setJointConfigRequest,
  Response: setJointConfigResponse,
  md5sum() { return '46282454b294ac7d0c48434b1d003f7a'; },
  datatype() { return 'pa10controller/setJointConfig'; }
};
