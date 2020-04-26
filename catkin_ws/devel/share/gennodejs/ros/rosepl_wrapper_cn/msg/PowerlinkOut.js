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
      this.cmdvel_lwheel = null;
      this.cmdvel_rwheel = null;
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
      if (initObj.hasOwnProperty('cmdvel_lwheel')) {
        this.cmdvel_lwheel = initObj.cmdvel_lwheel
      }
      else {
        this.cmdvel_lwheel = 0;
      }
      if (initObj.hasOwnProperty('cmdvel_rwheel')) {
        this.cmdvel_rwheel = initObj.cmdvel_rwheel
      }
      else {
        this.cmdvel_rwheel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerlinkOut
    // Serialize message field [shm_name]
    bufferOffset = _serializer.string(obj.shm_name, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    // Serialize message field [cmdvel_lwheel]
    bufferOffset = _serializer.int64(obj.cmdvel_lwheel, buffer, bufferOffset);
    // Serialize message field [cmdvel_rwheel]
    bufferOffset = _serializer.int64(obj.cmdvel_rwheel, buffer, bufferOffset);
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
    // Deserialize message field [cmdvel_lwheel]
    data.cmdvel_lwheel = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [cmdvel_rwheel]
    data.cmdvel_rwheel = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shm_name.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosepl_wrapper_cn/PowerlinkOut';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '084629ffa8e3d4d7e9182ff9bbabd096';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generated with epl_ros_generator.py
    
    # openPOWERLINK variables:
    string shm_name
    uint16 pid
    
    # xap.h variables:
    # uint8 DigitalInput
    int64 cmdvel_lwheel
    int64 cmdvel_rwheel
    
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

    if (msg.cmdvel_lwheel !== undefined) {
      resolved.cmdvel_lwheel = msg.cmdvel_lwheel;
    }
    else {
      resolved.cmdvel_lwheel = 0
    }

    if (msg.cmdvel_rwheel !== undefined) {
      resolved.cmdvel_rwheel = msg.cmdvel_rwheel;
    }
    else {
      resolved.cmdvel_rwheel = 0
    }

    return resolved;
    }
};

module.exports = PowerlinkOut;
