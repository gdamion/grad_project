// Auto-generated. Do not edit!

// (in-package rosepl_wrapper_mn.msg)


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
      this.CN1_DigitalOutput_00h_AU8_DigitalOutput = null;
      this.CN32_DigitalOutput_00h_AU8_DigitalOutput = null;
      this.CN110_DigitalOutput_00h_AU8_DigitalOutput = null;
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
      if (initObj.hasOwnProperty('CN1_DigitalOutput_00h_AU8_DigitalOutput')) {
        this.CN1_DigitalOutput_00h_AU8_DigitalOutput = initObj.CN1_DigitalOutput_00h_AU8_DigitalOutput
      }
      else {
        this.CN1_DigitalOutput_00h_AU8_DigitalOutput = 0;
      }
      if (initObj.hasOwnProperty('CN32_DigitalOutput_00h_AU8_DigitalOutput')) {
        this.CN32_DigitalOutput_00h_AU8_DigitalOutput = initObj.CN32_DigitalOutput_00h_AU8_DigitalOutput
      }
      else {
        this.CN32_DigitalOutput_00h_AU8_DigitalOutput = 0;
      }
      if (initObj.hasOwnProperty('CN110_DigitalOutput_00h_AU8_DigitalOutput')) {
        this.CN110_DigitalOutput_00h_AU8_DigitalOutput = initObj.CN110_DigitalOutput_00h_AU8_DigitalOutput
      }
      else {
        this.CN110_DigitalOutput_00h_AU8_DigitalOutput = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerlinkIn
    // Serialize message field [shm_name]
    bufferOffset = _serializer.string(obj.shm_name, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    // Serialize message field [CN1_DigitalOutput_00h_AU8_DigitalOutput]
    bufferOffset = _serializer.uint8(obj.CN1_DigitalOutput_00h_AU8_DigitalOutput, buffer, bufferOffset);
    // Serialize message field [CN32_DigitalOutput_00h_AU8_DigitalOutput]
    bufferOffset = _serializer.uint8(obj.CN32_DigitalOutput_00h_AU8_DigitalOutput, buffer, bufferOffset);
    // Serialize message field [CN110_DigitalOutput_00h_AU8_DigitalOutput]
    bufferOffset = _serializer.uint8(obj.CN110_DigitalOutput_00h_AU8_DigitalOutput, buffer, bufferOffset);
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
    // Deserialize message field [CN1_DigitalOutput_00h_AU8_DigitalOutput]
    data.CN1_DigitalOutput_00h_AU8_DigitalOutput = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CN32_DigitalOutput_00h_AU8_DigitalOutput]
    data.CN32_DigitalOutput_00h_AU8_DigitalOutput = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CN110_DigitalOutput_00h_AU8_DigitalOutput]
    data.CN110_DigitalOutput_00h_AU8_DigitalOutput = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shm_name.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosepl_wrapper_mn/PowerlinkIn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83446a679c527fd90cd8516147e626c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generated with epl_ros_generator.py
    
    # openPOWERLINK variables:
    string shm_name
    uint16 pid
    
    # xap.h variables:
    uint8 CN1_DigitalOutput_00h_AU8_DigitalOutput
    uint8 CN32_DigitalOutput_00h_AU8_DigitalOutput
    uint8 CN110_DigitalOutput_00h_AU8_DigitalOutput
    
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

    if (msg.CN1_DigitalOutput_00h_AU8_DigitalOutput !== undefined) {
      resolved.CN1_DigitalOutput_00h_AU8_DigitalOutput = msg.CN1_DigitalOutput_00h_AU8_DigitalOutput;
    }
    else {
      resolved.CN1_DigitalOutput_00h_AU8_DigitalOutput = 0
    }

    if (msg.CN32_DigitalOutput_00h_AU8_DigitalOutput !== undefined) {
      resolved.CN32_DigitalOutput_00h_AU8_DigitalOutput = msg.CN32_DigitalOutput_00h_AU8_DigitalOutput;
    }
    else {
      resolved.CN32_DigitalOutput_00h_AU8_DigitalOutput = 0
    }

    if (msg.CN110_DigitalOutput_00h_AU8_DigitalOutput !== undefined) {
      resolved.CN110_DigitalOutput_00h_AU8_DigitalOutput = msg.CN110_DigitalOutput_00h_AU8_DigitalOutput;
    }
    else {
      resolved.CN110_DigitalOutput_00h_AU8_DigitalOutput = 0
    }

    return resolved;
    }
};

module.exports = PowerlinkIn;
