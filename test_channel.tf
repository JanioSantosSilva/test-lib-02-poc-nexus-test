locals {
  # Definindo o valor do canal com acentos e espaços
  channel_raw = "Mobile Cartões"
  

  # Normalizando o canal: remove espaços e acentos
  channel_normalized = replace(
    replace(local.channel_raw, " ", ""),  
    "[áàâãäéèêëíìîïóòôõöúùûüçÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜÇ]", ""
  )
}


output "normalized_channel" {
  value = local.channel_normalized
}
