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

class PowerlinkIn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shm_name = null;
      this.pid = null;
      this.DigitalOutput = null;
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
      if (initObj.hasOwnProperty('DigitalOutput')) {
        this.DigitalOutput = initObj.DigitalOutput
      }
      else {
        this.DigitalOutput = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerlinkIn
    // Serialize message field [shm_name]
    bufferOffset = _serializer.string(obj.shm_name, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    // Serialize message field [DigitalOutput]
    bufferOffset = _serializer.uint8(obj.DigitalOutput, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerlinkIn
    let len;
    let data = new PowerlinkIn(null);
    // Deserialize message field [shm_name]
    data.shm_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pid]
    data.pid = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [DigitalOutput]
    data.DigitalOutput = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shm_name.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosepl_wrapper_cn/PowerlinkIn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80f0197dc834c087f63affbd7bbe99ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generated with epl_ros_generator.py
    
    # openPOWERLINK variables:
    string shm_name
    uint16 pid
    
    # xap.h variables:
    uint8 DigitalOutput
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerlinkIn(null);
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

    if (msg.DigitalOutput !== undefined) {
      resolved.DigitalOutput = msg.DigitalOutput;
    }
    else {
      resolved.DigitalOutput = 0
    }

    return resolved;
    }
};

module.exports = PowerlinkIn;
