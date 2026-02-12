variable "primary_region" {
  description = "Primary AWS region"
  type        = string
  default     = "us-east-1"
}

variable "conversation_id" {
  description = "ops0 conversation ID for resource tracking"
  type        = string
}

variable "project_name" {
  description = "Project name for ops0 resource organization"
  type        = string
  default     = "aws-import"
}