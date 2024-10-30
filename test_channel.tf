locals {
  # Definindo o valor do canal com acentos e espaços para teste
  channel_raw = "Mobile Cartões"
  
  # Normalizando o canal: remove espaços e acentos
  channel_normalized = lower(
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
                              local.channel_raw,
                              " ", ""),  # Remove espaços
                              "á", "a"),
                              "ã", "a"),
                              "â", "a"),
                              "é", "e"),
                              "ê", "e"),
                              "í", "i"),
                              "ó", "o"),
                              "ô", "o"),
                              "ú", "u"),
                              "ç", "c")
    )
}

output "normalized_channel" {
  value = local.channel_normalized
}