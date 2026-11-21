data "aws_security_groups" "test" {


}






# output "fetchall"{

#     value = data.aws_security_groups.test.ids
# }



data "aws_security_group" "selected" {
    count = length(data.aws_security_groups.test.ids)

    id = data.aws_security_groups.test.ids[count.index]
    
}


output "name" {


 value = data.aws_security_group.selected[*].name 
}




data "aws_instances" "getallinstances" {

  

#   filter {
#     name   = "instance.group-id"
#     values = ["sg-12345678"]
#   }

 instance_state_names = ["running"]
}


output "outputgetallinstances"{


    value = data.aws_instances.getallinstances
}



resource "aws_instance" "web" {

   count = length(data.aws_instances.getallinstances.ids) == 0 ? 0 : 0
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


output "createresource"{

    value = resource.aws_instance.web
}



data "aws_ami" "example" {
  
    most_recent      = true
    owners = [ "973714476881" ]

 
}


# data "aws_ami" "rootsnapshot_id"{

#      = data.aws_ami.example.root_snapshot_id

# }

output "retrivetheami"{

    value = {
        

       data1 = data.aws_ami.example
       data2 = data.aws_ami.rootsnapshot_id
    }
}


