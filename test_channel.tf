locals {
  # Definindo o valor do canal com acentos e espaços
  channel_raw = "Mobile Cartões"

  # Normalizando o canal: remove espaços e acentos
  channel_normalized = replace(
    replace(
       replace(
        replace(
          replace(
            replace(
              replace(
                replace(
                  replace(
                    replace(
                      replace(
                        replace(
                          replace(
                            replace(
                              replace(
                                replace(
                                  replace(
                                    local.channel_raw, " ", ""),  # Remove espaços
                                    "á", "a"),  # Remove acento
                                    "ã", "a"),
                                    "â", "a"),
                                    "é", "e"),
                                    "ê", "e"),
                                    "í", "i"),
                                    "ó", "o"),
                                    "ô", "o"),
                                    "ú", "u"),
                                    "ç", "c"),
                                    "Á", "A"),  # Mantém capitalização
                                    "À", "A"),
                                    "Â", "A"),
                                    "Ã", "A"),
                                    "É", "E")
  )
                                  
}

output "normalized_channel" {
  value = local.channel_normalized
}
