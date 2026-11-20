



    resource "aws_instance" "example" {
      ami           = data.aws_ami.example.id
      instance_type = "t3.micro"

      tags = {
        Name = "HelloWorld"
      }
    }





    
    resource "aws_instance" "allinstancecreation" {
count = length(data.aws_ami.multiplefilters)
      ami           = data.aws_ami.multiplefilters[count.index].id
      instance_type = "t3.micro"

      tags =  {

        Name = data.aws_ami.multiplefilters[count.index].name
      }
      
    }