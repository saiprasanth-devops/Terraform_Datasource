output "retrivetheami"{

    value = data.aws_ami.example.id
}


output "givetheamilinked"{


    value = data.aws_ami.returnallamilinkedtoowners.image_location
}


output "multipleamis"{

value = {
    name_ami = data.aws_ami.multiplefilters[*].name
   id_ami = data.aws_ami.multiplefilters[*].id
}
}


output "getresourcedata"{

    value = aws_instance.example.host_id
}

