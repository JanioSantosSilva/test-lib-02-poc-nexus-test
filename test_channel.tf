locals {
  # Definindo o valor do canal com acentos e espaços
  channel_raw = "Mobile Cartões"

  # Lista de caracteres acentuados e suas substituições
  accent_replacements = {
    "á" = "a",
    "ã" = "a",
    "â" = "a",
    "é" = "e",
    "ê" = "e",
    "í" = "i",
    "ó" = "o",
    "ô" = "o",
    "õ" = "o",
    "ú" = "u",
    "ç" = "c",
    "Á" = "A",
    "À" = "A",
    "Â" = "A",
    "Ã" = "A",
    "É" = "E",
    "Ê" = "E"
  }

  # Normalizando o canal: remove espaços e acentos
    channel_normalized = reduce(
      keys(local.accent_replacements),
      replace(local.channel_raw, " ", ""),  # Remove espaços
      (str, key) => replace(str, key, local.accent_replacements[key])
    )
}

output "normalized_channel" {
  value = local.channel_normalized
}

