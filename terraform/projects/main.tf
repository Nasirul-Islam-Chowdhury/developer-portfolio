# Local values for organizing resources by region
locals {
  # Group resources by region for easier management
  resources_by_region = {
    us-east-1 = {
      vpcs = {
        "vpc-0dcb8ae2b13fcace7" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0dac4bbf2e2206449" }
      }
      subnets = {
        "subnet-0a4f85b8a8cf1b161" = { vpc_id = "vpc-0dcb8ae2b13fcace7", cidr = "172.31.0.0/20", az = "us-east-1a" }
        "subnet-0dcc1e7ac0a014830" = { vpc_id = "vpc-0dcb8ae2b13fcace7", cidr = "172.31.80.0/20", az = "us-east-1b" }
        "subnet-0934f2f1df5bfd94f" = { vpc_id = "vpc-0dcb8ae2b13fcace7", cidr = "172.31.16.0/20", az = "us-east-1c" }
        "subnet-0bbefe282ce41964c" = { vpc_id = "vpc-0dcb8ae2b13fcace7", cidr = "172.31.32.0/20", az = "us-east-1d" }
        "subnet-0ca64086f526dfade" = { vpc_id = "vpc-0dcb8ae2b13fcace7", cidr = "172.31.48.0/20", az = "us-east-1e" }
        "subnet-0b992835e20147229" = { vpc_id = "vpc-0dcb8ae2b13fcace7", cidr = "172.31.64.0/20", az = "us-east-1f" }
      }
      security_groups = {
        "sg-03e59a4aac6d7fce0" = { vpc_id = "vpc-0dcb8ae2b13fcace7", name = "default", description = "default VPC security group" }
        "sg-01e5a1ff76bdddc83" = { vpc_id = "vpc-0dcb8ae2b13fcace7", name = "launch-wizard-1", description = "launch-wizard-1 created 2026-01-16T18:51:29.813Z" }
        "sg-03d490066a8599fcd" = { vpc_id = "vpc-0dcb8ae2b13fcace7", name = "launch-wizard-2", description = "launch-wizard-2 created 2026-01-22T15:32:50.104Z" }
      }
    }
    us-east-2 = {
      vpcs = {
        "vpc-080c7c1b3527e0afd" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0522f543feaa986fd" }
      }
      subnets = {
        "subnet-0e25fd8ccf0118aa6" = { vpc_id = "vpc-080c7c1b3527e0afd", cidr = "172.31.0.0/20", az = "us-east-2a" }
        "subnet-02e80a12bb3813e56" = { vpc_id = "vpc-080c7c1b3527e0afd", cidr = "172.31.16.0/20", az = "us-east-2b" }
        "subnet-027803d1b400fe459" = { vpc_id = "vpc-080c7c1b3527e0afd", cidr = "172.31.32.0/20", az = "us-east-2c" }
      }
      security_groups = {
        "sg-06039f7b70a3968de" = { vpc_id = "vpc-080c7c1b3527e0afd", name = "default", description = "default VPC security group" }
      }
    }
    us-west-1 = {
      vpcs = {
        "vpc-0c76644ccd3917835" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0cae8d6f892b46d8c" }
      }
      subnets = {
        "subnet-0b256af686604c80f" = { vpc_id = "vpc-0c76644ccd3917835", cidr = "172.31.0.0/20", az = "us-west-1c" }
        "subnet-02f3f2552a299bdea" = { vpc_id = "vpc-0c76644ccd3917835", cidr = "172.31.16.0/20", az = "us-west-1a" }
      }
      security_groups = {
        "sg-03bb3e574ff5a37dd" = { vpc_id = "vpc-0c76644ccd3917835", name = "default", description = "default VPC security group" }
      }
    }
    us-west-2 = {
      vpcs = {
        "vpc-01126977974e5ae7d" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0ca5a617e50dc49e7" }
      }
      subnets = {
        "subnet-06044d975e3661b59" = { vpc_id = "vpc-01126977974e5ae7d", cidr = "172.31.32.0/20", az = "us-west-2a" }
        "subnet-0adf45ee242eb7d33" = { vpc_id = "vpc-01126977974e5ae7d", cidr = "172.31.16.0/20", az = "us-west-2b" }
        "subnet-0df19cb6f1f89ec82" = { vpc_id = "vpc-01126977974e5ae7d", cidr = "172.31.0.0/20", az = "us-west-2c" }
        "subnet-02d0c134959076db3" = { vpc_id = "vpc-01126977974e5ae7d", cidr = "172.31.48.0/20", az = "us-west-2d" }
      }
      security_groups = {
        "sg-0fa9b92e3d1631ec3" = { vpc_id = "vpc-01126977974e5ae7d", name = "default", description = "default VPC security group" }
      }
    }
    eu-central-1 = {
      vpcs = {
        "vpc-0d94840f3b1ad96b6" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0eb223cad9bfcc2cb" }
      }
      subnets = {
        "subnet-09eb9bcb3ee63dbac" = { vpc_id = "vpc-0d94840f3b1ad96b6", cidr = "172.31.16.0/20", az = "eu-central-1a" }
        "subnet-056a9a78cee3e4664" = { vpc_id = "vpc-0d94840f3b1ad96b6", cidr = "172.31.32.0/20", az = "eu-central-1b" }
        "subnet-0f5c409b46786e598" = { vpc_id = "vpc-0d94840f3b1ad96b6", cidr = "172.31.0.0/20", az = "eu-central-1c" }
      }
      security_groups = {
        "sg-0c6cd51bda16c1476" = { vpc_id = "vpc-0d94840f3b1ad96b6", name = "default", description = "default VPC security group" }
      }
    }
    eu-west-1 = {
      vpcs = {
        "vpc-00e6dd06d80aff53d" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0569d95ae691dc6f9" }
      }
      subnets = {
        "subnet-0f5560c185ebc5a07" = { vpc_id = "vpc-00e6dd06d80aff53d", cidr = "172.31.16.0/20", az = "eu-west-1a" }
        "subnet-02eaa00b63eb08956" = { vpc_id = "vpc-00e6dd06d80aff53d", cidr = "172.31.32.0/20", az = "eu-west-1b" }
        "subnet-0a83daae674012a17" = { vpc_id = "vpc-00e6dd06d80aff53d", cidr = "172.31.0.0/20", az = "eu-west-1c" }
      }
      security_groups = {
        "sg-04c6584e3e984b371" = { vpc_id = "vpc-00e6dd06d80aff53d", name = "default", description = "default VPC security group" }
      }
    }
    eu-west-2 = {
      vpcs = {
        "vpc-0c6540b7d2823708b" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-01be97f6c7fff85b4" }
      }
      subnets = {
        "subnet-03edbeefe91b08013" = { vpc_id = "vpc-0c6540b7d2823708b", cidr = "172.31.16.0/20", az = "eu-west-2a" }
        "subnet-06c728502197ee5c5" = { vpc_id = "vpc-0c6540b7d2823708b", cidr = "172.31.32.0/20", az = "eu-west-2b" }
        "subnet-017960a66406a776b" = { vpc_id = "vpc-0c6540b7d2823708b", cidr = "172.31.0.0/20", az = "eu-west-2c" }
      }
      security_groups = {
        "sg-0f31a55a4aade620c" = { vpc_id = "vpc-0c6540b7d2823708b", name = "default", description = "default VPC security group" }
      }
    }
    eu-west-3 = {
      vpcs = {
        "vpc-055da51bb20a6ee1b" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0a880fa335775755a" }
      }
      subnets = {
        "subnet-07a7c10d996a2152e" = { vpc_id = "vpc-055da51bb20a6ee1b", cidr = "172.31.0.0/20", az = "eu-west-3a" }
        "subnet-0eb122e6fa881fae2" = { vpc_id = "vpc-055da51bb20a6ee1b", cidr = "172.31.16.0/20", az = "eu-west-3b" }
        "subnet-02280ebcf74291c06" = { vpc_id = "vpc-055da51bb20a6ee1b", cidr = "172.31.32.0/20", az = "eu-west-3c" }
      }
      security_groups = {
        "sg-0e78097280900a452" = { vpc_id = "vpc-055da51bb20a6ee1b", name = "default", description = "default VPC security group" }
      }
    }
    eu-north-1 = {
      vpcs = {
        "vpc-085348b9c849fa96e" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-05ca38a33e51a7f76" }
      }
      subnets = {
        "subnet-0f02cf092dac04a0f" = { vpc_id = "vpc-085348b9c849fa96e", cidr = "172.31.16.0/20", az = "eu-north-1a" }
        "subnet-0dc2a96e5605ad069" = { vpc_id = "vpc-085348b9c849fa96e", cidr = "172.31.32.0/20", az = "eu-north-1b" }
        "subnet-05ba302e0425cc254" = { vpc_id = "vpc-085348b9c849fa96e", cidr = "172.31.0.0/20", az = "eu-north-1c" }
      }
      security_groups = {
        "sg-01c8ac8b05d892d1f" = { vpc_id = "vpc-085348b9c849fa96e", name = "default", description = "default VPC security group" }
      }
    }
    ap-northeast-1 = {
      vpcs = {
        "vpc-0c66409068a68d04e" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-06368d34654de487d" }
      }
      subnets = {
        "subnet-01032ae3a0e0d8b46" = { vpc_id = "vpc-0c66409068a68d04e", cidr = "172.31.32.0/20", az = "ap-northeast-1a" }
        "subnet-0dded05eb1d2571a0" = { vpc_id = "vpc-0c66409068a68d04e", cidr = "172.31.0.0/20", az = "ap-northeast-1c" }
        "subnet-042edaecae6b19c5f" = { vpc_id = "vpc-0c66409068a68d04e", cidr = "172.31.16.0/20", az = "ap-northeast-1d" }
      }
      security_groups = {
        "sg-00cd80c03debf0b02" = { vpc_id = "vpc-0c66409068a68d04e", name = "default", description = "default VPC security group" }
      }
    }
    ap-northeast-2 = {
      vpcs = {
        "vpc-0815a21d6a854fe56" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0e273af953d58bbeb" }
      }
      subnets = {
        "subnet-0cd73e079daf6263c" = { vpc_id = "vpc-0815a21d6a854fe56", cidr = "172.31.0.0/20", az = "ap-northeast-2a" }
        "subnet-01e616896f43092ac" = { vpc_id = "vpc-0815a21d6a854fe56", cidr = "172.31.16.0/20", az = "ap-northeast-2b" }
        "subnet-0aaf84b07538f5437" = { vpc_id = "vpc-0815a21d6a854fe56", cidr = "172.31.32.0/20", az = "ap-northeast-2c" }
        "subnet-06b72d48acd995f93" = { vpc_id = "vpc-0815a21d6a854fe56", cidr = "172.31.48.0/20", az = "ap-northeast-2d" }
      }
      security_groups = {
        "sg-044269b870be2e595" = { vpc_id = "vpc-0815a21d6a854fe56", name = "default", description = "default VPC security group" }
      }
    }
    ap-northeast-3 = {
      vpcs = {
        "vpc-0c448e7090857e244" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0cbe2fda8095d75b4" }
      }
      subnets = {
        "subnet-01e59cce25d596f56" = { vpc_id = "vpc-0c448e7090857e244", cidr = "172.31.32.0/20", az = "ap-northeast-3a" }
        "subnet-0da1c820a4e9948bc" = { vpc_id = "vpc-0c448e7090857e244", cidr = "172.31.16.0/20", az = "ap-northeast-3b" }
        "subnet-0db04f1cddb512c86" = { vpc_id = "vpc-0c448e7090857e244", cidr = "172.31.0.0/20", az = "ap-northeast-3c" }
      }
      security_groups = {
        "sg-0e876bd726add0ebe" = { vpc_id = "vpc-0c448e7090857e244", name = "default", description = "default VPC security group" }
      }
    }
    ap-south-1 = {
      vpcs = {
        "vpc-0ecab7ca434c93a78" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-025f876b1a4012468" }
      }
      subnets = {
        "subnet-044372185b282845d" = { vpc_id = "vpc-0ecab7ca434c93a78", cidr = "172.31.32.0/20", az = "ap-south-1a" }
        "subnet-05b496c15f7857205" = { vpc_id = "vpc-0ecab7ca434c93a78", cidr = "172.31.0.0/20", az = "ap-south-1b" }
        "subnet-08fd37504eabd5943" = { vpc_id = "vpc-0ecab7ca434c93a78", cidr = "172.31.16.0/20", az = "ap-south-1c" }
      }
      security_groups = {
        "sg-06ea9df76df5d220d" = { vpc_id = "vpc-0ecab7ca434c93a78", name = "default", description = "default VPC security group" }
      }
    }
    ap-southeast-1 = {
      vpcs = {
        "vpc-018d7af439c420ddb" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-030a4f7439b7abf45" }
      }
      subnets = {
        "subnet-00f796ee01886835e" = { vpc_id = "vpc-018d7af439c420ddb", cidr = "172.31.32.0/20", az = "ap-southeast-1a" }
        "subnet-0275ac51bd6b1b858" = { vpc_id = "vpc-018d7af439c420ddb", cidr = "172.31.16.0/20", az = "ap-southeast-1b" }
        "subnet-0e1d179622df074be" = { vpc_id = "vpc-018d7af439c420ddb", cidr = "172.31.0.0/20", az = "ap-southeast-1c" }
      }
      security_groups = {
        "sg-0ef19cb27dbf2e333" = { vpc_id = "vpc-018d7af439c420ddb", name = "default", description = "default VPC security group" }
      }
    }
    ap-southeast-2 = {
      vpcs = {
        "vpc-02559ef902f9b9e6f" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-0436f8679bc5a59a8" }
      }
      subnets = {
        "subnet-041ccf4a2a2538656" = { vpc_id = "vpc-02559ef902f9b9e6f", cidr = "172.31.0.0/20", az = "ap-southeast-2a" }
        "subnet-084c5b48ab43a20c4" = { vpc_id = "vpc-02559ef902f9b9e6f", cidr = "172.31.32.0/20", az = "ap-southeast-2b" }
        "subnet-025603a268c2ba1b6" = { vpc_id = "vpc-02559ef902f9b9e6f", cidr = "172.31.16.0/20", az = "ap-southeast-2c" }
      }
      security_groups = {
        "sg-0424af6577b3607ec" = { vpc_id = "vpc-02559ef902f9b9e6f", name = "default", description = "default VPC security group" }
      }
    }
    ca-central-1 = {
      vpcs = {
        "vpc-0970dbf12c9d41f3b" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-01561b7226918ae6b" }
      }
      subnets = {
        "subnet-0dc893c8f6b64a3ff" = { vpc_id = "vpc-0970dbf12c9d41f3b", cidr = "172.31.16.0/20", az = "ca-central-1a" }
        "subnet-0b27d40eb6ae49708" = { vpc_id = "vpc-0970dbf12c9d41f3b", cidr = "172.31.0.0/20", az = "ca-central-1b" }
        "subnet-00c46af4296a79a6f" = { vpc_id = "vpc-0970dbf12c9d41f3b", cidr = "172.31.32.0/20", az = "ca-central-1d" }
      }
      security_groups = {
        "sg-04d61492c8d283df9" = { vpc_id = "vpc-0970dbf12c9d41f3b", name = "default", description = "default VPC security group" }
      }
    }
    sa-east-1 = {
      vpcs = {
        "vpc-006f4aa2f13bca07e" = { cidr = "172.31.0.0/16", dhcp_options_id = "dopt-00e8e421fed953000" }
      }
      subnets = {
        "subnet-07b70836ee673e014" = { vpc_id = "vpc-006f4aa2f13bca07e", cidr = "172.31.0.0/20", az = "sa-east-1a" }
        "subnet-0d8164592e40089be" = { vpc_id = "vpc-006f4aa2f13bca07e", cidr = "172.31.16.0/20", az = "sa-east-1b" }
        "subnet-0cb74825a69c28262" = { vpc_id = "vpc-006f4aa2f13bca07e", cidr = "172.31.32.0/20", az = "sa-east-1c" }
      }
      security_groups = {
        "sg-07303d55557443663" = { vpc_id = "vpc-006f4aa2f13bca07e", name = "default", description = "default VPC security group" }
      }
    }
  }
}

# ============================================
# US-EAST-1 Resources
# ============================================

resource "aws_vpc" "us_east_1" {
  for_each = local.resources_by_region.us-east-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.us-east-1
}

resource "aws_subnet" "us_east_1" {
  for_each = local.resources_by_region.us-east-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.us-east-1
}

resource "aws_security_group" "us_east_1" {
  for_each = local.resources_by_region.us-east-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.us-east-1
}

# ============================================
# US-EAST-2 Resources
# ============================================

resource "aws_vpc" "us_east_2" {
  for_each = local.resources_by_region.us-east-2.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.us-east-2
}

resource "aws_subnet" "us_east_2" {
  for_each = local.resources_by_region.us-east-2.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.us-east-2
}

resource "aws_security_group" "us_east_2" {
  for_each = local.resources_by_region.us-east-2.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.us-east-2
}

# ============================================
# US-WEST-1 Resources
# ============================================

resource "aws_vpc" "us_west_1" {
  for_each = local.resources_by_region.us-west-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.us-west-1
}

resource "aws_subnet" "us_west_1" {
  for_each = local.resources_by_region.us-west-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.us-west-1
}

resource "aws_security_group" "us_west_1" {
  for_each = local.resources_by_region.us-west-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.us-west-1
}

# ============================================
# US-WEST-2 Resources
# ============================================

resource "aws_vpc" "us_west_2" {
  for_each = local.resources_by_region.us-west-2.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.us-west-2
}

resource "aws_subnet" "us_west_2" {
  for_each = local.resources_by_region.us-west-2.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.us-west-2
}

resource "aws_security_group" "us_west_2" {
  for_each = local.resources_by_region.us-west-2.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.us-west-2
}

# ============================================
# EU-CENTRAL-1 Resources
# ============================================

resource "aws_vpc" "eu_central_1" {
  for_each = local.resources_by_region.eu-central-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.eu-central-1
}

resource "aws_subnet" "eu_central_1" {
  for_each = local.resources_by_region.eu-central-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.eu-central-1
}

resource "aws_security_group" "eu_central_1" {
  for_each = local.resources_by_region.eu-central-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.eu-central-1
}

# ============================================
# EU-WEST-1 Resources
# ============================================

resource "aws_vpc" "eu_west_1" {
  for_each = local.resources_by_region.eu-west-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.eu-west-1
}

resource "aws_subnet" "eu_west_1" {
  for_each = local.resources_by_region.eu-west-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.eu-west-1
}

resource "aws_security_group" "eu_west_1" {
  for_each = local.resources_by_region.eu-west-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.eu-west-1
}

# ============================================
# EU-WEST-2 Resources
# ============================================

resource "aws_vpc" "eu_west_2" {
  for_each = local.resources_by_region.eu-west-2.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.eu-west-2
}

resource "aws_subnet" "eu_west_2" {
  for_each = local.resources_by_region.eu-west-2.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.eu-west-2
}

resource "aws_security_group" "eu_west_2" {
  for_each = local.resources_by_region.eu-west-2.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.eu-west-2
}

# ============================================
# EU-WEST-3 Resources
# ============================================

resource "aws_vpc" "eu_west_3" {
  for_each = local.resources_by_region.eu-west-3.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.eu-west-3
}

resource "aws_subnet" "eu_west_3" {
  for_each = local.resources_by_region.eu-west-3.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.eu-west-3
}

resource "aws_security_group" "eu_west_3" {
  for_each = local.resources_by_region.eu-west-3.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.eu-west-3
}

# ============================================
# EU-NORTH-1 Resources
# ============================================

resource "aws_vpc" "eu_north_1" {
  for_each = local.resources_by_region.eu-north-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.eu-north-1
}

resource "aws_subnet" "eu_north_1" {
  for_each = local.resources_by_region.eu-north-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.eu-north-1
}

resource "aws_security_group" "eu_north_1" {
  for_each = local.resources_by_region.eu-north-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.eu-north-1
}

# ============================================
# AP-NORTHEAST-1 Resources
# ============================================

resource "aws_vpc" "ap_northeast_1" {
  for_each = local.resources_by_region.ap-northeast-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.ap-northeast-1
}

resource "aws_subnet" "ap_northeast_1" {
  for_each = local.resources_by_region.ap-northeast-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.ap-northeast-1
}

resource "aws_security_group" "ap_northeast_1" {
  for_each = local.resources_by_region.ap-northeast-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.ap-northeast-1
}

# ============================================
# AP-NORTHEAST-2 Resources
# ============================================

resource "aws_vpc" "ap_northeast_2" {
  for_each = local.resources_by_region.ap-northeast-2.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.ap-northeast-2
}

resource "aws_subnet" "ap_northeast_2" {
  for_each = local.resources_by_region.ap-northeast-2.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.ap-northeast-2
}

resource "aws_security_group" "ap_northeast_2" {
  for_each = local.resources_by_region.ap-northeast-2.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.ap-northeast-2
}

# ============================================
# AP-NORTHEAST-3 Resources
# ============================================

resource "aws_vpc" "ap_northeast_3" {
  for_each = local.resources_by_region.ap-northeast-3.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.ap-northeast-3
}

resource "aws_subnet" "ap_northeast_3" {
  for_each = local.resources_by_region.ap-northeast-3.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.ap-northeast-3
}

resource "aws_security_group" "ap_northeast_3" {
  for_each = local.resources_by_region.ap-northeast-3.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.ap-northeast-3
}

# ============================================
# AP-SOUTH-1 Resources
# ============================================

resource "aws_vpc" "ap_south_1" {
  for_each = local.resources_by_region.ap-south-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.ap-south-1
}

resource "aws_subnet" "ap_south_1" {
  for_each = local.resources_by_region.ap-south-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.ap-south-1
}

resource "aws_security_group" "ap_south_1" {
  for_each = local.resources_by_region.ap-south-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.ap-south-1
}

# ============================================
# AP-SOUTHEAST-1 Resources
# ============================================

resource "aws_vpc" "ap_southeast_1" {
  for_each = local.resources_by_region.ap-southeast-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.ap-southeast-1
}

resource "aws_subnet" "ap_southeast_1" {
  for_each = local.resources_by_region.ap-southeast-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.ap-southeast-1
}

resource "aws_security_group" "ap_southeast_1" {
  for_each = local.resources_by_region.ap-southeast-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.ap-southeast-1
}

# ============================================
# AP-SOUTHEAST-2 Resources
# ============================================

resource "aws_vpc" "ap_southeast_2" {
  for_each = local.resources_by_region.ap-southeast-2.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.ap-southeast-2
}

resource "aws_subnet" "ap_southeast_2" {
  for_each = local.resources_by_region.ap-southeast-2.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.ap-southeast-2
}

resource "aws_security_group" "ap_southeast_2" {
  for_each = local.resources_by_region.ap-southeast-2.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.ap-southeast-2
}

# ============================================
# CA-CENTRAL-1 Resources
# ============================================

resource "aws_vpc" "ca_central_1" {
  for_each = local.resources_by_region.ca-central-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.ca-central-1
}

resource "aws_subnet" "ca_central_1" {
  for_each = local.resources_by_region.ca-central-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.ca-central-1
}

resource "aws_security_group" "ca_central_1" {
  for_each = local.resources_by_region.ca-central-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.ca-central-1
}

# ============================================
# SA-EAST-1 Resources
# ============================================

resource "aws_vpc" "sa_east_1" {
  for_each = local.resources_by_region.sa-east-1.vpcs

  cidr_block           = each.value.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  provider = aws.sa-east-1
}

resource "aws_subnet" "sa_east_1" {
  for_each = local.resources_by_region.sa-east-1.subnets

  vpc_id                  = each.value.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  provider = aws.sa-east-1
}

resource "aws_security_group" "sa_east_1" {
  for_each = local.resources_by_region.sa-east-1.security_groups

  name        = each.value.name
  description = each.value.description
  vpc_id      = each.value.vpc_id

  provider = aws.sa-east-1
}

# ============================================
# Security Group Rules - us-east-1 (modified default + launch wizards)
# ============================================

resource "aws_security_group_rule" "default_us_east_1_ingress_self" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-03e59a4aac6d7fce0"
  self              = true

  provider = aws.us-east-1
}

resource "aws_security_group_rule" "default_us_east_1_ingress_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-03e59a4aac6d7fce0"

  provider = aws.us-east-1
}

resource "aws_security_group_rule" "default_us_east_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-03e59a4aac6d7fce0"

  provider = aws.us-east-1
}

resource "aws_security_group_rule" "launch_wizard_1_ingress_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-01e5a1ff76bdddc83"

  provider = aws.us-east-1
}

resource "aws_security_group_rule" "launch_wizard_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-01e5a1ff76bdddc83"

  provider = aws.us-east-1
}

resource "aws_security_group_rule" "launch_wizard_2_ingress_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-03d490066a8599fcd"

  provider = aws.us-east-1
}

resource "aws_security_group_rule" "launch_wizard_2_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-03d490066a8599fcd"

  provider = aws.us-east-1
}

# ============================================
# Security Group Rules - Default SGs in other regions
# ============================================

# us-east-2
resource "aws_security_group_rule" "default_us_east_2_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-06039f7b70a3968de"
  self              = true
  provider          = aws.us-east-2
}

resource "aws_security_group_rule" "default_us_east_2_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-06039f7b70a3968de"
  provider          = aws.us-east-2
}

# us-west-1
resource "aws_security_group_rule" "default_us_west_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-03bb3e574ff5a37dd"
  self              = true
  provider          = aws.us-west-1
}

resource "aws_security_group_rule" "default_us_west_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-03bb3e574ff5a37dd"
  provider          = aws.us-west-1
}

# us-west-2
resource "aws_security_group_rule" "default_us_west_2_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-0fa9b92e3d1631ec3"
  self              = true
  provider          = aws.us-west-2
}

resource "aws_security_group_rule" "default_us_west_2_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0fa9b92e3d1631ec3"
  provider          = aws.us-west-2
}

# eu-central-1
resource "aws_security_group_rule" "default_eu_central_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-0c6cd51bda16c1476"
  self              = true
  provider          = aws.eu-central-1
}

resource "aws_security_group_rule" "default_eu_central_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0c6cd51bda16c1476"
  provider          = aws.eu-central-1
}

# eu-west-1
resource "aws_security_group_rule" "default_eu_west_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-04c6584e3e984b371"
  self              = true
  provider          = aws.eu-west-1
}

resource "aws_security_group_rule" "default_eu_west_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-04c6584e3e984b371"
  provider          = aws.eu-west-1
}

# eu-west-2
resource "aws_security_group_rule" "default_eu_west_2_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-0f31a55a4aade620c"
  self              = true
  provider          = aws.eu-west-2
}

resource "aws_security_group_rule" "default_eu_west_2_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0f31a55a4aade620c"
  provider          = aws.eu-west-2
}

# eu-west-3
resource "aws_security_group_rule" "default_eu_west_3_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-0e78097280900a452"
  self              = true
  provider          = aws.eu-west-3
}

resource "aws_security_group_rule" "default_eu_west_3_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0e78097280900a452"
  provider          = aws.eu-west-3
}

# eu-north-1
resource "aws_security_group_rule" "default_eu_north_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-01c8ac8b05d892d1f"
  self              = true
  provider          = aws.eu-north-1
}

resource "aws_security_group_rule" "default_eu_north_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-01c8ac8b05d892d1f"
  provider          = aws.eu-north-1
}

# ap-northeast-1
resource "aws_security_group_rule" "default_ap_northeast_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-00cd80c03debf0b02"
  self              = true
  provider          = aws.ap-northeast-1
}

resource "aws_security_group_rule" "default_ap_northeast_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-00cd80c03debf0b02"
  provider          = aws.ap-northeast-1
}

# ap-northeast-2
resource "aws_security_group_rule" "default_ap_northeast_2_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-044269b870be2e595"
  self              = true
  provider          = aws.ap-northeast-2
}

resource "aws_security_group_rule" "default_ap_northeast_2_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-044269b870be2e595"
  provider          = aws.ap-northeast-2
}

# ap-northeast-3
resource "aws_security_group_rule" "default_ap_northeast_3_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-0e876bd726add0ebe"
  self              = true
  provider          = aws.ap-northeast-3
}

resource "aws_security_group_rule" "default_ap_northeast_3_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0e876bd726add0ebe"
  provider          = aws.ap-northeast-3
}

# ap-south-1
resource "aws_security_group_rule" "default_ap_south_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-06ea9df76df5d220d"
  self              = true
  provider          = aws.ap-south-1
}

resource "aws_security_group_rule" "default_ap_south_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-06ea9df76df5d220d"
  provider          = aws.ap-south-1
}

# ap-southeast-1
resource "aws_security_group_rule" "default_ap_southeast_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-0ef19cb27dbf2e333"
  self              = true
  provider          = aws.ap-southeast-1
}

resource "aws_security_group_rule" "default_ap_southeast_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0ef19cb27dbf2e333"
  provider          = aws.ap-southeast-1
}

# ap-southeast-2
resource "aws_security_group_rule" "default_ap_southeast_2_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-0424af6577b3607ec"
  self              = true
  provider          = aws.ap-southeast-2
}

resource "aws_security_group_rule" "default_ap_southeast_2_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0424af6577b3607ec"
  provider          = aws.ap-southeast-2
}

# ca-central-1
resource "aws_security_group_rule" "default_ca_central_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-04d61492c8d283df9"
  self              = true
  provider          = aws.ca-central-1
}

resource "aws_security_group_rule" "default_ca_central_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-04d61492c8d283df9"
  provider          = aws.ca-central-1
}

# sa-east-1
resource "aws_security_group_rule" "default_sa_east_1_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "sg-07303d55557443663"
  self              = true
  provider          = aws.sa-east-1
}

resource "aws_security_group_rule" "default_sa_east_1_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-07303d55557443663"
  provider          = aws.sa-east-1
}

# ============================================
# EC2 Instance
# ============================================

resource "aws_instance" "test" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type          = "t3.micro"
  subnet_id              = "subnet-0a4f85b8a8cf1b161"
  vpc_security_group_ids = ["sg-03e59a4aac6d7fce0"]

  tags = {
    Name = "test"
  }

  provider = aws.us-east-1
}
