-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "map_builder.lua"
include "trajectory_builder.lua"

options = {
  map_builder = MAP_BUILDER,
  trajectory_builder = TRAJECTORY_BUILDER,
  map_frame = "map",
  tracking_frame = "base_footprint", -- imu_link, If you are using gazebo, use 'base_footprint' (libgazebo_ros_imu's bug)
  published_frame = "odom",     -- odom  The ROS frame ID to use as the child frame for publishing poses. For example “odom” if an “odom” frame is supplied by a different part of the system. In this case the pose of “odom” in the map_frame will be published. Otherwise, setting it to “base_link” is likely appropriate.
  odom_frame = "odom",
  provide_odom_frame = false,  -- false  if enabled, the local, non-loop-closed, continuous pose will be published as the odom_frame in the map_frame.
  publish_frame_projected_to_2d = false,
  use_odometry = true,
  use_nav_sat = false,
  use_landmarks = false,
  num_laser_scans = 1,
  num_multi_echo_laser_scans = 0,
  num_subdivisions_per_laser_scan = 1,
  num_point_clouds = 0,
  lookup_transform_timeout_sec = 0.1,
  submap_publish_period_sec = 0.1,
  pose_publish_period_sec = 5e-3,
  trajectory_publish_period_sec = 30e-3,
  rangefinder_sampling_ratio = 1.,
  odometry_sampling_ratio = 1.,
  fixed_frame_pose_sampling_ratio = 1.,
  imu_sampling_ratio = 0.1,
  landmarks_sampling_ratio = 1.,
}

MAP_BUILDER.use_trajectory_builder_2d = true
MAP_BUILDER.num_background_threads = 4

TRAJECTORY_BUILDER_2D.min_range = 0.16
TRAJECTORY_BUILDER_2D.max_range = 25.0    --3.5
TRAJECTORY_BUILDER_2D.missing_data_ray_length = 3.
TRAJECTORY_BUILDER_2D.use_imu_data = false
TRAJECTORY_BUILDER_2D.use_online_correlative_scan_matching = false
TRAJECTORY_BUILDER_2D.motion_filter.max_angle_radians = math.rad(0.1)
TRAJECTORY_BUILDER_2D.submaps.num_range_data = 240 --120
--TRAJECTORY_BUILDER_2D.submaps.grid_options_2d.resolution = 0.05
--TRAJECTORY_BUILDER_2D.motion_filter.max_time_seconds = 0.03
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 5
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 0.1

POSE_GRAPH.constraint_builder.min_score = 0.65
POSE_GRAPH.constraint_builder.global_localization_min_score = 0.7    --0.7
POSE_GRAPH.optimization_problem.huber_scale = 5e0
POSE_GRAPH.constraint_builder.sampling_ratio = 0.1
--POSE_GRAPH.optimization_problem.ceres_solver_options.max_num_iterations = 20
--POSE_GRAPH.optimize_every_n_nodes = 0 --Global SLAM | Disable it with 0 --320
--POSE_GRAPH.matcher_rotation_weight = 300.
--POSE_GRAPH.global_constraint_search_after_n_seconds = 100. --10.
--POSE_GRAPH.constraint_builder.global_localization_min_score = 0.66


return options
