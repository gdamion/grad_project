using System;
using System.Runtime.InteropServices;
/// <summary>
/// This file was autogenerated by openCONFIGURATOR-1.4.1 on 09-May-2020 16:00:25
/// </summary>

namespace openPOWERLINK
{

	/// <summary>
	/// Struct : ProcessImage Out
	/// </summary>
	[StructLayout(LayoutKind.Explicit, Pack = 1, Size = 72)]
	public struct AppProcessImageOut
	{
		[FieldOffset(0)]
		public Int64 CN1_M01_mm_x_pos1_mm_x_pos1;
		[FieldOffset(8)]
		public Int64 CN1_M02_mm_y_pos2_mm_y_pos2;
		[FieldOffset(16)]
		public Int64 CN1_M03_mm_z_pos3_mm_z_pos3;
		[FieldOffset(24)]
		public Int64 CN1_M04_mm_x_orient4_mm_x_orient4;
		[FieldOffset(32)]
		public Int64 CN1_M05_mm_y_orient5_mm_y_orient5;
		[FieldOffset(40)]
		public Int64 CN1_M06_mm_z_orient6_mm_z_orient6;
		[FieldOffset(48)]
		public Int64 CN1_M07_mm_w_orient7_mm_w_orient7;
		[FieldOffset(56)]
		public Int64 CN1_M08_odom_lwheel14_odom_lwheel14;
		[FieldOffset(64)]
		public Int64 CN1_M09_odom_rwheel15_odom_rwheel15;
	}

	/// <summary>
	/// Struct : ProcessImage In
	/// </summary>
	[StructLayout(LayoutKind.Explicit, Pack = 1, Size = 16)]
	public struct AppProcessImageIn
	{
		[FieldOffset(0)]
		public Int64 CN1_M0A_cmdvel_lwheel1_cmdvel_lwheel1;
		[FieldOffset(8)]
		public Int64 CN1_M0B_cmdvel_rwheel2_cmdvel_rwheel2;
	}
}
