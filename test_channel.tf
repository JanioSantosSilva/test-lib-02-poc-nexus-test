locals {
  # Definindo o valor do canal com acentos e espaços
  channel_raw = "Mobile Cartões"
  

  # Normalizando o canal: remove espaços e acentos
  channel_normalized = regex_replace(
    regex_replace(local.channel_raw, "[ ]", ""),  
    "[áàâãäéèêëíìîïóòôõöúùûüçÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜÇ]", 
    "a",       # Substitui áàâãäÁÀÂÃÄ por a
    "e",      # Substitui éèêëÉÈÊË por e
    "i",       # Substitui íìîïÍÌÎÏ por i
    "o",    # Substitui óòôõöÓÒÔÕÖ por o
    "u",      # Substitui úùûüÚÙÛÜ por u
    "c"       # Substitui çÇ por c
  )
}


output "normalized_channel" {
  value = local.channel_normalized
}
