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
      this.mm_x_pos = null;
      this.mm_y_pos = null;
      this.mm_z_pos = null;
      this.mm_x_orient = null;
      this.mm_y_orient = null;
      this.mm_z_orient = null;
      this.mm_w_orient = null;
      this.odom_lwheel = null;
      this.odom_rwheel = null;
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
      if (initObj.hasOwnProperty('mm_x_pos')) {
        this.mm_x_pos = initObj.mm_x_pos
      }
      else {
        this.mm_x_pos = 0;
      }
      if (initObj.hasOwnProperty('mm_y_pos')) {
        this.mm_y_pos = initObj.mm_y_pos
      }
      else {
        this.mm_y_pos = 0;
      }
      if (initObj.hasOwnProperty('mm_z_pos')) {
        this.mm_z_pos = initObj.mm_z_pos
      }
      else {
        this.mm_z_pos = 0;
      }
      if (initObj.hasOwnProperty('mm_x_orient')) {
        this.mm_x_orient = initObj.mm_x_orient
      }
      else {
        this.mm_x_orient = 0;
      }
      if (initObj.hasOwnProperty('mm_y_orient')) {
        this.mm_y_orient = initObj.mm_y_orient
      }
      else {
        this.mm_y_orient = 0;
      }
      if (initObj.hasOwnProperty('mm_z_orient')) {
        this.mm_z_orient = initObj.mm_z_orient
      }
      else {
        this.mm_z_orient = 0;
      }
      if (initObj.hasOwnProperty('mm_w_orient')) {
        this.mm_w_orient = initObj.mm_w_orient
      }
      else {
        this.mm_w_orient = 0;
      }
      if (initObj.hasOwnProperty('odom_lwheel')) {
        this.odom_lwheel = initObj.odom_lwheel
      }
      else {
        this.odom_lwheel = 0;
      }
      if (initObj.hasOwnProperty('odom_rwheel')) {
        this.odom_rwheel = initObj.odom_rwheel
      }
      else {
        this.odom_rwheel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerlinkIn
    // Serialize message field [shm_name]
    bufferOffset = _serializer.string(obj.shm_name, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.uint16(obj.pid, buffer, bufferOffset);
    // Serialize message field [mm_x_pos]
    bufferOffset = _serializer.int64(obj.mm_x_pos, buffer, bufferOffset);
    // Serialize message field [mm_y_pos]
    bufferOffset = _serializer.int64(obj.mm_y_pos, buffer, bufferOffset);
    // Serialize message field [mm_z_pos]
    bufferOffset = _serializer.int64(obj.mm_z_pos, buffer, bufferOffset);
    // Serialize message field [mm_x_orient]
    bufferOffset = _serializer.int64(obj.mm_x_orient, buffer, bufferOffset);
    // Serialize message field [mm_y_orient]
    bufferOffset = _serializer.int64(obj.mm_y_orient, buffer, bufferOffset);
    // Serialize message field [mm_z_orient]
    bufferOffset = _serializer.int64(obj.mm_z_orient, buffer, bufferOffset);
    // Serialize message field [mm_w_orient]
    bufferOffset = _serializer.int64(obj.mm_w_orient, buffer, bufferOffset);
    // Serialize message field [odom_lwheel]
    bufferOffset = _serializer.int64(obj.odom_lwheel, buffer, bufferOffset);
    // Serialize message field [odom_rwheel]
    bufferOffset = _serializer.int64(obj.odom_rwheel, buffer, bufferOffset);
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
    // Deserialize message field [mm_x_pos]
    data.mm_x_pos = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mm_y_pos]
    data.mm_y_pos = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mm_z_pos]
    data.mm_z_pos = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mm_x_orient]
    data.mm_x_orient = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mm_y_orient]
    data.mm_y_orient = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mm_z_orient]
    data.mm_z_orient = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mm_w_orient]
    data.mm_w_orient = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [odom_lwheel]
    data.odom_lwheel = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [odom_rwheel]
    data.odom_rwheel = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shm_name.length;
    return length + 78;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosepl_wrapper_cn/PowerlinkIn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43ef1fa8f235c243a4ab2c833daf73da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generated with epl_ros_generator.py
    
    # openPOWERLINK variables:
    string shm_name
    uint16 pid
    
    # xap.h variables:
    # uint8 DigitalOutput
    int64 mm_x_pos
    int64 mm_y_pos
    int64 mm_z_pos
    int64 mm_x_orient
    int64 mm_y_orient
    int64 mm_z_orient
    int64 mm_w_orient
    int64 odom_lwheel
    int64 odom_rwheel
    
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

    if (msg.mm_x_pos !== undefined) {
      resolved.mm_x_pos = msg.mm_x_pos;
    }
    else {
      resolved.mm_x_pos = 0
    }

    if (msg.mm_y_pos !== undefined) {
      resolved.mm_y_pos = msg.mm_y_pos;
    }
    else {
      resolved.mm_y_pos = 0
    }

    if (msg.mm_z_pos !== undefined) {
      resolved.mm_z_pos = msg.mm_z_pos;
    }
    else {
      resolved.mm_z_pos = 0
    }

    if (msg.mm_x_orient !== undefined) {
      resolved.mm_x_orient = msg.mm_x_orient;
    }
    else {
      resolved.mm_x_orient = 0
    }

    if (msg.mm_y_orient !== undefined) {
      resolved.mm_y_orient = msg.mm_y_orient;
    }
    else {
      resolved.mm_y_orient = 0
    }

    if (msg.mm_z_orient !== undefined) {
      resolved.mm_z_orient = msg.mm_z_orient;
    }
    else {
      resolved.mm_z_orient = 0
    }

    if (msg.mm_w_orient !== undefined) {
      resolved.mm_w_orient = msg.mm_w_orient;
    }
    else {
      resolved.mm_w_orient = 0
    }

    if (msg.odom_lwheel !== undefined) {
      resolved.odom_lwheel = msg.odom_lwheel;
    }
    else {
      resolved.odom_lwheel = 0
    }

    if (msg.odom_rwheel !== undefined) {
      resolved.odom_rwheel = msg.odom_rwheel;
    }
    else {
      resolved.odom_rwheel = 0
    }

    return resolved;
    }
};

module.exports = PowerlinkIn;
