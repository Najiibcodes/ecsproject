module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet1_cidr = var.subnet1_cidr
  subnet2_cidr = var.subnet2_cidr
}

module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.vpc.vpc_id
}

module "iam" {
  source               = "./modules/iam"
  execution_role_name  = "ecsTaskExecutionRole"
  execution_policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

module "load_balancer" {
  source                  = "./modules/load_balancer"
  lb_name                 = "ecsproject-lb"
  security_groups         = [module.security_groups.ecs_security_group_id]
  subnets                 = module.vpc.public_subnets
  certificate_arn         = var.certificate_arn
  target_group_name       = "ecsproject-tg"
  target_group_port       = 80
  target_group_protocol   = "HTTP"
  vpc_id                  = module.vpc.vpc_id
  health_check_path       = "/"
  health_check_interval   = 30
  health_check_timeout    = 5
  health_check_healthy_threshold = 2
  health_check_unhealthy_threshold = 2
  health_check_matcher    = "200-299"
}

module "ecs" {
  source                                = "./modules/ecs"
  cluster_name                          = "ecsproject-cluster"
  task_family                           = "ecsproject-task"
  network_mode                          = "awsvpc"
  compatibilities                       = ["FARGATE"]
  task_cpu                              = "1024"
  task_memory                           = "3072"
  execution_role_arn                    = module.iam.execution_role_arn
  cpu_architecture                      = "X86_64"
  operating_system_family               = "LINUX"
  container_definitions                 = jsonencode([{
    name  = "ecsproject-container"
    image = "156041431760.dkr.ecr.eu-west-2.amazonaws.com/ecsproject:latest"
    portMappings = [{
      containerPort = 80
      hostPort      = 80
    }]
  }])
  service_name                          = "ecsproject-service"
  desired_count                         = 1
  launch_type                           = "FARGATE"
  health_check_grace_period_seconds     = 300
  deployment_type                       = "ECS"
  subnets                               = module.vpc.public_subnets
  security_groups                       = [module.security_groups.ecs_security_group_id]
  assign_public_ip                      = true
  target_group_arn                      = module.load_balancer.target_group_arn
  container_name                        = "ecsproject-container"
  container_port                        = 80
  dependency_arns                       = [module.load_balancer.alb_arn]
}

module "route53" {
  source        = "./modules/route53"
  domain_name   = "najiib.co.uk"
  subdomain     = "brickbreaker"
  alb_dns_name  = module.load_balancer.alb_dns_name
  alb_zone_id   = module.load_balancer.alb_zone_id
}

