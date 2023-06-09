variable network_mode {
  type        = string
  default     = "awsvpc"
  description = "The network mode to use for the task. This is required to be `awsvpc` for `FARGATE` `launch_type`"
}

variable ecs_launch_type {
  type        = string
  default     = "FARGATE"
  description = "ECS launch type"
}

variable task_cpu {
  type        = number
  default     = 256
  description = "The number of CPU units used by the task. If using `FARGATE` launch type `task_cpu` must match supported memory values (https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size)"
}

variable task_memory {
  type        = number
  default     = 512
  description = "The amount of memory (in MiB) used by the task. If using Fargate launch type `task_memory` must match supported cpu value (https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size)"
}

variable region {
  type        = string
  description = "Default region for AWS"
}

variable deployment_minimum_healthy_percent {
  type        = number
  default     = 50
  description = "Minimum percent of tasks to be ran during deployment"
}

variable deployment_maximum_percent {
  type        = number
  default     = 200
  description = "Maximum percent of tasks to be ran during deployment"
}

variable desired_count {
  type        = number
  default     = 1
  description = "The number of instances that ECS will run"
}

variable broker_list {
  type        = string
  default     = ""
  description = "AWS secrets manager ARN"
}

variable private_subnet_list {
  type        = list
  description = "List of private subnets for ECS to use"
}

variable vpc_id {
  type        = string
  description = "VPC identifier"
}