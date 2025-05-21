provider "aws"{
    region = "ap-southeast-1"
}

resource "aws_vpc" "regvpc"{
    cidr_block = var.vpc_cidr

    tags = {
        Name = "${var.env}-vpc"
    }
}

resource "aws_subnet" "subnets"{
    count = length(var.subnet_cidrs)
    vpc_id = aws_vpc.regvpc.id
    cidr_block = var.subnet_cidrs[count.index]
    availability_zone = var.azs[count.index]

    tags = {
        Name = "${var.env}-subnet-${count.index}"
    }

}
