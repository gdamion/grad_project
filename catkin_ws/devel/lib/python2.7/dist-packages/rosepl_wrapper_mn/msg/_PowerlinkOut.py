# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rosepl_wrapper_mn/PowerlinkOut.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PowerlinkOut(genpy.Message):
  _md5sum = "43ef1fa8f235c243a4ab2c833daf73da"
  _type = "rosepl_wrapper_mn/PowerlinkOut"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
int64 mm_x_pos
int64 mm_y_pos
int64 mm_z_pos
int64 mm_x_orient
int64 mm_y_orient
int64 mm_z_orient
int64 mm_w_orient
int64 odom_lwheel
int64 odom_rwheel
"""
  __slots__ = ['shm_name','pid','mm_x_pos','mm_y_pos','mm_z_pos','mm_x_orient','mm_y_orient','mm_z_orient','mm_w_orient','odom_lwheel','odom_rwheel']
  _slot_types = ['string','uint16','int64','int64','int64','int64','int64','int64','int64','int64','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       shm_name,pid,mm_x_pos,mm_y_pos,mm_z_pos,mm_x_orient,mm_y_orient,mm_z_orient,mm_w_orient,odom_lwheel,odom_rwheel

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
      if self.mm_x_pos is None:
        self.mm_x_pos = 0
      if self.mm_y_pos is None:
        self.mm_y_pos = 0
      if self.mm_z_pos is None:
        self.mm_z_pos = 0
      if self.mm_x_orient is None:
        self.mm_x_orient = 0
      if self.mm_y_orient is None:
        self.mm_y_orient = 0
      if self.mm_z_orient is None:
        self.mm_z_orient = 0
      if self.mm_w_orient is None:
        self.mm_w_orient = 0
      if self.odom_lwheel is None:
        self.odom_lwheel = 0
      if self.odom_rwheel is None:
        self.odom_rwheel = 0
    else:
      self.shm_name = ''
      self.pid = 0
      self.mm_x_pos = 0
      self.mm_y_pos = 0
      self.mm_z_pos = 0
      self.mm_x_orient = 0
      self.mm_y_orient = 0
      self.mm_z_orient = 0
      self.mm_w_orient = 0
      self.odom_lwheel = 0
      self.odom_rwheel = 0

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
      buff.write(_get_struct_H9q().pack(_x.pid, _x.mm_x_pos, _x.mm_y_pos, _x.mm_z_pos, _x.mm_x_orient, _x.mm_y_orient, _x.mm_z_orient, _x.mm_w_orient, _x.odom_lwheel, _x.odom_rwheel))
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
      end += 74
      (_x.pid, _x.mm_x_pos, _x.mm_y_pos, _x.mm_z_pos, _x.mm_x_orient, _x.mm_y_orient, _x.mm_z_orient, _x.mm_w_orient, _x.odom_lwheel, _x.odom_rwheel,) = _get_struct_H9q().unpack(str[start:end])
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
      buff.write(_get_struct_H9q().pack(_x.pid, _x.mm_x_pos, _x.mm_y_pos, _x.mm_z_pos, _x.mm_x_orient, _x.mm_y_orient, _x.mm_z_orient, _x.mm_w_orient, _x.odom_lwheel, _x.odom_rwheel))
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
      end += 74
      (_x.pid, _x.mm_x_pos, _x.mm_y_pos, _x.mm_z_pos, _x.mm_x_orient, _x.mm_y_orient, _x.mm_z_orient, _x.mm_w_orient, _x.odom_lwheel, _x.odom_rwheel,) = _get_struct_H9q().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H9q = None
def _get_struct_H9q():
    global _struct_H9q
    if _struct_H9q is None:
        _struct_H9q = struct.Struct("<H9q")
    return _struct_H9q
