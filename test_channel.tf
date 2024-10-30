locals {
  # Definindo o valor do canal com acentos e espaços
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
                            replace(
                              replace(
                                replace(
                                  replace(
                                    replace(
                                      replace(
                                        replace(
                                          replace(local.channel_raw, " ", ""),  # Remove espaços
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
                                          "Á", "a"),
                                          "À", "a"),
                                          "Â", "a"),
                                          "Ã", "a"),
                                          "É", "e"),
                                          "È", "e"),
                                          "Í", "i"),
                                          "Ó", "o"),
                                          "Ô", "o"),
                                          "Ú", "u")  # Remove acento
  )
}

output "normalized_channel" {
  value = local.channel_normalized
}
