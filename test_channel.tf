locals {
  # Definindo o valor do canal com acentos e espaços para teste
  channel_raw = "Mobile Cartões"
  
  # Normalizando o canal
  channel_normalized = lower(
    replace(
      replace(local.channel_raw, " ", ""),
      "/[áàâãäéèêëíìîïóòôõöúùûüçÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜÇ]/",
      "aeeeiioouu"
    )
  )
}

output "normalized_channel" {
  value = local.channel_normalized
}
