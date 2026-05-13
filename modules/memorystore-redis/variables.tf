variable "instance_name" {
  description = "Name of the Redis instance"
  type        = string
  default     = "main-redis"
}

variable "region" {
  description = "GCP region for the Redis instance"
  type        = string
  default     = "europe-west1"
}

variable "memory_size_gb" {
  description = "Memory size in GB for the Redis instance"
  type        = number
  default     = 4
}

variable "redis_version" {
  description = "The version of Redis to use"
  type        = string
  default     = "REDIS_7_0"
}

variable "tier" {
  description = "Service tier of the Redis instance (BASIC or STANDARD_HA)"
  type        = string
  default     = "STANDARD_HA"
}
