data "aws_ami" "example" {
 
  most_recent      = true

  owners           = ["973714476881"]

   filter {
    name   = "image-id"
    values = ["ami-0055977a6e828a4f4"]
  }

  
} 



data "aws_ami" "returnallamilinkedtoowners" {
 
  most_recent      = true

  owners           = ["973714476881"]


  
} 


data "aws_ami" "multiplefilters" {
 count = length(var.multipleamis)
  most_recent      = true

 # owners           = ["973714476881"]

   filter {
    name   = "image-id"
    values = [var.multipleamis[count.index]]
  }
} 








