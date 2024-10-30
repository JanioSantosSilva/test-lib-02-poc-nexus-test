locals {
  # Definindo o valor do canal com acentos e espaços
  channel_raw = "Mobile Cartões"
  

  # Normalizando o canal: remove espaços e acentos
  channel_normalized = regex_replace(
    regex_replace(local.channel_raw, "[ ]", ""),  # Remove espaços
    "[áàâãäéèêëíìîïóòôõöúùûüçÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜÇ]", 
    "" 
  )
}


output "normalized_channel" {
  value = local.channel_normalized
}
