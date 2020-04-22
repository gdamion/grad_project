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

class PowerlinkOut {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shm_name = null;
      this.pid = null;
      this.CN1_DigitalInput_00h_AU8_DigitalInput = null;
      this.CN32_DigitalInput_00h_AU8_DigitalInput = null;
      this.CN110_DigitalInput_00h_AU8_DigitalInput = null;
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
      if (initObj.hasOwnProperty('CN1_DigitalInput_00h_AU8_DigitalInput')) {
        this.CN1_DigitalInput_00h_AU8_DigitalInput = initObj.CN1_DigitalInput_00h_AU8_DigitalInput
      }
      else {
        this.CN1_DigitalInput_00h_AU8_DigitalInput = 0;
      }
      if (initObj.hasOwnProperty('CN32_DigitalInput_00h_AU8_DigitalInput')) {
        this.CN32_DigitalInput_00h_AU8_DigitalInput = initObj.CN32_DigitalInput_00h_AU8_DigitalInput
      }
      else {
        this.CN32_DigitalInput_00h_AU8_DigitalInput = 0;
      }
      if (initObj.hasOwnProperty('CN110_DigitalInput_00h_AU8_DigitalInput')) {
        this.CN110_DigitalInput_00h_AU8_DigitalInput = initObj.CN110_DigitalInput_00h_AU8_DigitalInput
      }
      else {
        this.CN110_DigitalInput_00h_AU8_DigitalInput = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerlinkOut
    // Serialize message field [shm_name]
    bufferOffset = _serializer.string(obj.shm_name, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    // Serialize message field [CN1_DigitalInput_00h_AU8_DigitalInput]
    bufferOffset = _serializer.uint8(obj.CN1_DigitalInput_00h_AU8_DigitalInput, buffer, bufferOffset);
    // Serialize message field [CN32_DigitalInput_00h_AU8_DigitalInput]
    bufferOffset = _serializer.uint8(obj.CN32_DigitalInput_00h_AU8_DigitalInput, buffer, bufferOffset);
    // Serialize message field [CN110_DigitalInput_00h_AU8_DigitalInput]
    bufferOffset = _serializer.uint8(obj.CN110_DigitalInput_00h_AU8_DigitalInput, buffer, bufferOffset);
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
    // Deserialize message field [CN1_DigitalInput_00h_AU8_DigitalInput]
    data.CN1_DigitalInput_00h_AU8_DigitalInput = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CN32_DigitalInput_00h_AU8_DigitalInput]
    data.CN32_DigitalInput_00h_AU8_DigitalInput = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CN110_DigitalInput_00h_AU8_DigitalInput]
    data.CN110_DigitalInput_00h_AU8_DigitalInput = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shm_name.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosepl_wrapper_mn/PowerlinkOut';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f910c88861ed3545762f094f3ee2af0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generated with epl_ros_generator.py
    
    # openPOWERLINK variables:
    string shm_name
    uint16 pid
    
    # xap.h variables:
    uint8 CN1_DigitalInput_00h_AU8_DigitalInput
    uint8 CN32_DigitalInput_00h_AU8_DigitalInput
    uint8 CN110_DigitalInput_00h_AU8_DigitalInput
    
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

    if (msg.CN1_DigitalInput_00h_AU8_DigitalInput !== undefined) {
      resolved.CN1_DigitalInput_00h_AU8_DigitalInput = msg.CN1_DigitalInput_00h_AU8_DigitalInput;
    }
    else {
      resolved.CN1_DigitalInput_00h_AU8_DigitalInput = 0
    }

    if (msg.CN32_DigitalInput_00h_AU8_DigitalInput !== undefined) {
      resolved.CN32_DigitalInput_00h_AU8_DigitalInput = msg.CN32_DigitalInput_00h_AU8_DigitalInput;
    }
    else {
      resolved.CN32_DigitalInput_00h_AU8_DigitalInput = 0
    }

    if (msg.CN110_DigitalInput_00h_AU8_DigitalInput !== undefined) {
      resolved.CN110_DigitalInput_00h_AU8_DigitalInput = msg.CN110_DigitalInput_00h_AU8_DigitalInput;
    }
    else {
      resolved.CN110_DigitalInput_00h_AU8_DigitalInput = 0
    }

    return resolved;
    }
};

module.exports = PowerlinkOut;
