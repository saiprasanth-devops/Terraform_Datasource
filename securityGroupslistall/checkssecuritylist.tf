data "aws_security_groups" "test" {

    


 
}


data "aws_security_group" "selected" {

    count = length(data.aws_security_groups.test.ids)

    id = data.aws_security_groups.test.ids[count.index]



}



output "getinstances"{


    value = data.aws_security_groups.test
}


output "getinstances1"{


    value = data.aws_security_group.selected[*].name
}


data "aws_security_group" "defauldidname" {
  
name = "default"

  }

  output "defaultidname"{

    value =data.aws_security_group.defauldidname.id
  }



