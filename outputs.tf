# Outputs

output "pub_ins_public_ip" {
  value = aws_instance.public.*.public_ip
}

output "pub_ins_private_ip" {
  value = aws_instance.public.*.private_ip
}

output "pri_ins_private_ip" {
  value = aws_instance.private.*.private_ip
}

output "full_pri_ins_private_ip" {
  value = aws_instance.private_full.*.private_ip
}
