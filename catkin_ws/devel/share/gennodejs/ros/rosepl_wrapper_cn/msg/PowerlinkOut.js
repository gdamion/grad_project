// Auto-generated. Do not edit!

// (in-package rosepl_wrapper_cn.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PowerlinkOut {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shm_name = null;
      this.pid = null;
      this.DigitalInput = null;
    }
    else {
      if (initObj.hasOwnProperty('shm_name')) {
        this.shm_name = initObj.shm_name
      }
      else {
        this.shm_name = '';
      }
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = 0;
      }
      if (initObj.hasOwnProperty('DigitalInput')) {
        this.DigitalInput = initObj.DigitalInput
      }
      else {
        this.DigitalInput = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerlinkOut
    // Serialize message field [shm_name]
    bufferOffset = _serializer.string(obj.shm_name, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    // Serialize message field [DigitalInput]
    bufferOffset = _serializer.uint8(obj.DigitalInput, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerlinkOut
    let len;
    let data = new PowerlinkOut(null);
    // Deserialize message field [shm_name]
    data.shm_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pid]
    data.pid = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [DigitalInput]
    data.DigitalInput = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shm_name.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosepl_wrapper_cn/PowerlinkOut';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8531aafcaf639a04b50bb4ea10f69ede';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generated with epl_ros_generator.py
    
    # openPOWERLINK variables:
    string shm_name
    uint16 pid
    
    # xap.h variables:
    uint8 DigitalInput
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerlinkOut(null);
    if (msg.shm_name !== undefined) {
      resolved.shm_name = msg.shm_name;
    }
    else {
      resolved.shm_name = ''
    }

    if (msg.pid !== undefined) {
      resolved.pid = msg.pid;
    }
    else {
      resolved.pid = 0
    }

    if (msg.DigitalInput !== undefined) {
      resolved.DigitalInput = msg.DigitalInput;
    }
    else {
      resolved.DigitalInput = 0
    }

    return resolved;
    }
};

module.exports = PowerlinkOut;
