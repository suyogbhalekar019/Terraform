variable "admin_usernames" {
  description = "List of admin users"
  type        = list(string)
  default     = ["admin1", "admin2"]
}

variable "read_only_usernames" {
  description = "List of read-only users"
  type        = list(string)
  default     = ["user1", "user2"]
}

variable "developer_role_name" {
  description = "Name of the developer role"
  default     = "DeveloperRole"
}
