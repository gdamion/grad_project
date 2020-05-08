// Auto-generated. Do not edit!

// (in-package rosepl_wrapper_mn.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SdoTransferRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.pid = null;
      this.node = null;
      this.index = null;
      this.subindex = null;
      this.write = null;
      this.data = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = 0;
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('subindex')) {
        this.subindex = initObj.subindex
      }
      else {
        this.subindex = 0;
      }
      if (initObj.hasOwnProperty('write')) {
        this.write = initObj.write
      }
      else {
        this.write = false;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SdoTransferRequest
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = _serializer.uint8(obj.node, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.uint16(obj.index, buffer, bufferOffset);
    // Serialize message field [subindex]
    bufferOffset = _serializer.uint16(obj.subindex, buffer, bufferOffset);
    // Serialize message field [write]
    bufferOffset = _serializer.bool(obj.write, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.uint64(obj.data, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint16(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SdoTransferRequest
    let len;
    let data = new SdoTransferRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pid]
    data.pid = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [subindex]
    data.subindex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [write]
    data.write = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosepl_wrapper_mn/SdoTransferRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fbde0efc1b1fd34aa49e7dc50b9f72c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 action
    uint16 pid
    uint8 node
    uint16 index
    uint16 subindex
    bool write
    uint64 data
    uint16 size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SdoTransferRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.pid !== undefined) {
      resolved.pid = msg.pid;
    }
    else {
      resolved.pid = 0
    }

    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.subindex !== undefined) {
      resolved.subindex = msg.subindex;
    }
    else {
      resolved.subindex = 0
    }

    if (msg.write !== undefined) {
      resolved.write = msg.write;
    }
    else {
      resolved.write = false
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

class SdoTransferResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error = null;
      this.data = null;
      this.is_ready = null;
    }
    else {
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
      if (initObj.hasOwnProperty('is_ready')) {
        this.is_ready = initObj.is_ready
      }
      else {
        this.is_ready = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SdoTransferResponse
    // Serialize message field [error]
    bufferOffset = _serializer.uint16(obj.error, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.uint64(obj.data, buffer, bufferOffset);
    // Serialize message field [is_ready]
    bufferOffset = _serializer.bool(obj.is_ready, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SdoTransferResponse
    let len;
    let data = new SdoTransferResponse(null);
    // Deserialize message field [error]
    data.error = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [is_ready]
    data.is_ready = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosepl_wrapper_mn/SdoTransferResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3217e5ce40be2c02ca45c6aec3ad489';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 error
    uint64 data
    bool is_ready
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SdoTransferResponse(null);
    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    if (msg.is_ready !== undefined) {
      resolved.is_ready = msg.is_ready;
    }
    else {
      resolved.is_ready = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SdoTransferRequest,
  Response: SdoTransferResponse,
  md5sum() { return '7e21ae9a3de205dc320e50907fc35cdc'; },
  datatype() { return 'rosepl_wrapper_mn/SdoTransfer'; }
};
