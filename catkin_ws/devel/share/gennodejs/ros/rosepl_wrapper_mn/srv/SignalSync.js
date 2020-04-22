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

class SignalSyncRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.do_add = null;
      this.pid = null;
    }
    else {
      if (initObj.hasOwnProperty('do_add')) {
        this.do_add = initObj.do_add
      }
      else {
        this.do_add = false;
      }
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalSyncRequest
    // Serialize message field [do_add]
    bufferOffset = _serializer.bool(obj.do_add, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalSyncRequest
    let len;
    let data = new SignalSyncRequest(null);
    // Deserialize message field [do_add]
    data.do_add = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pid]
    data.pid = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosepl_wrapper_mn/SignalSyncRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25337467ea805b76a9afc686a835191f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool do_add
    uint16 pid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignalSyncRequest(null);
    if (msg.do_add !== undefined) {
      resolved.do_add = msg.do_add;
    }
    else {
      resolved.do_add = false
    }

    if (msg.pid !== undefined) {
      resolved.pid = msg.pid;
    }
    else {
      resolved.pid = 0
    }

    return resolved;
    }
};

class SignalSyncResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalSyncResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalSyncResponse
    let len;
    let data = new SignalSyncResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosepl_wrapper_mn/SignalSyncResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignalSyncResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SignalSyncRequest,
  Response: SignalSyncResponse,
  md5sum() { return '242caa9d447108ca38b61cc3364649f4'; },
  datatype() { return 'rosepl_wrapper_mn/SignalSync'; }
};
