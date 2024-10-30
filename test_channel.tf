locals {
  # Definindo o valor do canal com acentos e espaços
  channel_raw = "Plataforma_Movel_Bradesco"

  # Remover espaços
  channel_no_space = replace(local.channel_raw, " ", "")

  # Normalizar acentos
  channel_normalized = lower(replace(
    replace(
      replace(
       replace(
        replace(
          replace(
            replace(
              replace(
                replace(
                  replace(
                    replace(local.channel_no_space, "á", "a"),
                    "ã", "a"),
                  "â", "a"),
                "é", "e"),
              "ê", "e"),
            "í", "i"),
          "ó", "o"),
        "ô", "o"),
      "õ", "o"),
     "ú", "u"),
     "ç", "c")
    )
}

output "normalized_channel" {
  value = local.channel_normalized
}
