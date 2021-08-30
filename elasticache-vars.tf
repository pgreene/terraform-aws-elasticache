variable "tags" {
  default = {}
}

variable "cluster_id" {
  description = "(Required) Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource."
  default= null
}

variable "replication_group_id" {
  description = "(Optional) The ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group."
  default = null
}

variable "engine" {
  description = "(Required unless replication_group_id is provided) Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis."
  default = null
}

variable "engine_version" {
  description = "(Optional) Version number of the cache engine to be used. See Describe Cache Engine Versions in the AWS Documentation center for supported versions)"
  default = null
}

variable "maintenance_window" {
  description = "(Optional) Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00"
  default = null
}

variable "node_type" {
  description = "(Required unless replication_group_id is provided) The compute and memory capacity of the nodes. See Available Cache Node Types for supported node types. For Memcached, changing this value will re-create the resource."
  default = null
}

variable "num_cache_nodes" {
  description = "(Required unless replication_group_id is provided) The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 20. If this number is reduced on subsequent runs, the highest numbered nodes will be removed."
  default = null
}

variable "parameter_group_name" {
  description = "(Required unless replication_group_id is provided) Name of the parameter group to associate with this cache cluster"
  default = null
}

variable "port" {
  description = "(Optional) The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with replication_group_id. Changing this value will re-create the resource."
  default = null
}

variable "subnet_group_name" {
  description = "(Optional, VPC only) Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource."
  default = null
}

variable "security_group_names" {
  description = "(Optional, EC2 Classic only) List of security group names to associate with this cache cluster. Changing this value will re-create the resource."
  default = null
}

variable "security_group_ids" {
  description = "(Optional, VPC only) One or more VPC security groups associated with the cache cluster"
  default = null
}

variable "apply_immediately" {
  description = "(Optional) Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon ElastiCache Documentation for more information."
  default = false
}

variable "snapshot_arns" {
  description = "(Optional, Redis only) A single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing snapshot_arns forces a new resource."
  default = null
}

variable "snapshot_name" {
  description = "(Optional, Redis only) The name of a snapshot from which to restore data into the new node group. Changing snapshot_name forces a new resource."
  default = null
}

variable "snapshot_window" {
  description = "(Optional, Redis only) The daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00"
  default = null
}

variable "snapshot_retention_limit" {
  description = "(Optional, Redis only) The number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes"
  default = null
}

variable "notification_topic_arn" {
  description = "(Optional) An Amazon Resource Name (ARN) of an SNS topic to send ElastiCache notifications to. Example: arn:aws:sns:us-east-1:012345678999:my_sns_topic"
  default = null
}

variable "az_mode" {
  description = "(Optional, Memcached only) Specifies whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az. If you want to choose cross-az, num_cache_nodes must be greater than 1"
  default = null
}

variable "availability_zone" {
  description = "(Optional) The Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use preferred_availability_zones instead. Default: System chosen Availability Zone. Changing this value will re-create the resource."
  default = null
}

variable "preferred_availability_zones" {
  description = "(Optional, Memcached only) A list of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of num_cache_nodes. If you want all the nodes in the same Availability Zone, use availability_zone instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference."
  default = null
}

variable "final_snapshot_identifier" {
  description = "(Optional, Redis only) The name of your final cluster snapshot. If omitted, no final snapshot will be made."
  default = null
}
