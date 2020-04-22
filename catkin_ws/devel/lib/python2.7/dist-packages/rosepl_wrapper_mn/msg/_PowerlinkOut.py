# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rosepl_wrapper_mn/PowerlinkOut.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PowerlinkOut(genpy.Message):
  _md5sum = "1f910c88861ed3545762f094f3ee2af0"
  _type = "rosepl_wrapper_mn/PowerlinkOut"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
uint8 CN1_DigitalInput_00h_AU8_DigitalInput
uint8 CN32_DigitalInput_00h_AU8_DigitalInput
uint8 CN110_DigitalInput_00h_AU8_DigitalInput
"""
  __slots__ = ['shm_name','pid','CN1_DigitalInput_00h_AU8_DigitalInput','CN32_DigitalInput_00h_AU8_DigitalInput','CN110_DigitalInput_00h_AU8_DigitalInput']
  _slot_types = ['string','uint16','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       shm_name,pid,CN1_DigitalInput_00h_AU8_DigitalInput,CN32_DigitalInput_00h_AU8_DigitalInput,CN110_DigitalInput_00h_AU8_DigitalInput

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PowerlinkOut, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.shm_name is None:
        self.shm_name = ''
      if self.pid is None:
        self.pid = 0
      if self.CN1_DigitalInput_00h_AU8_DigitalInput is None:
        self.CN1_DigitalInput_00h_AU8_DigitalInput = 0
      if self.CN32_DigitalInput_00h_AU8_DigitalInput is None:
        self.CN32_DigitalInput_00h_AU8_DigitalInput = 0
      if self.CN110_DigitalInput_00h_AU8_DigitalInput is None:
        self.CN110_DigitalInput_00h_AU8_DigitalInput = 0
    else:
      self.shm_name = ''
      self.pid = 0
      self.CN1_DigitalInput_00h_AU8_DigitalInput = 0
      self.CN32_DigitalInput_00h_AU8_DigitalInput = 0
      self.CN110_DigitalInput_00h_AU8_DigitalInput = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.shm_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_H3B().pack(_x.pid, _x.CN1_DigitalInput_00h_AU8_DigitalInput, _x.CN32_DigitalInput_00h_AU8_DigitalInput, _x.CN110_DigitalInput_00h_AU8_DigitalInput))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shm_name = str[start:end].decode('utf-8')
      else:
        self.shm_name = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.pid, _x.CN1_DigitalInput_00h_AU8_DigitalInput, _x.CN32_DigitalInput_00h_AU8_DigitalInput, _x.CN110_DigitalInput_00h_AU8_DigitalInput,) = _get_struct_H3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.shm_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_H3B().pack(_x.pid, _x.CN1_DigitalInput_00h_AU8_DigitalInput, _x.CN32_DigitalInput_00h_AU8_DigitalInput, _x.CN110_DigitalInput_00h_AU8_DigitalInput))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shm_name = str[start:end].decode('utf-8')
      else:
        self.shm_name = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.pid, _x.CN1_DigitalInput_00h_AU8_DigitalInput, _x.CN32_DigitalInput_00h_AU8_DigitalInput, _x.CN110_DigitalInput_00h_AU8_DigitalInput,) = _get_struct_H3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H3B = None
def _get_struct_H3B():
    global _struct_H3B
    if _struct_H3B is None:
        _struct_H3B = struct.Struct("<H3B")
    return _struct_H3B
