#language: pt
  @run
  Funcionalidade: Realizando um simples CRUD na classe de processo.

    Cenário de Fundo:
      Dado que o advogado está na página de processos

    Cenário: Simples POST com todos os campos preenchidos corretamente
      E o advogado informa no campo "vara" o valor "2"
      E o advogado informa no campo "numero_processo" o valor "12314"
      E o advogado informa no campo "natureza" o valor "Guarda"
      E o advogado informa no campo "partes" o valor "Alberto x Alberta"
      E o advogado informa no campo "urgente" o valor "S"
      E o advogado informa no campo "arbitramento" o valor "N"
      E o advogado informa no campo "assistente_social" o valor "Robson Agapito"
      E o advogado informa no campo "data_entrada" o valor "2020-02-12"
      E o advogado informa no campo "data_saida" o valor "2020-02-20"
      E o advogado informa no campo "data_agendamento" o valor "2020-02-13"
      E o advogado informa no campo "status" o valor "Aguardando entrevista"
      E o advogado informa no campo "observacao" o valor "Nada a declarar"
      Quando o advogado clicar em salvar
      Então o advogado deveria receber uma mensagem de "salvo com sucesso"
      E o advogado dever ver o campo "vara" com valor "2"

    Esquema do Cenário: Simples GET com todos os campos preenchidos corretamente
      E o advogado gostaria de visualizar o processo com id <id>
      Quando o advogado clicar em visualizar
      Então o advogado deveria receber uma mensagem de "<mensagem>"
      E o advogado dever ver o campo "vara" com valor "4"

      Exemplos:
      | id   | mensagem       |
      |7     | sucesso        |
      |321332| não encontrado |

    Cenário: Simples PUT com todos os campos preenchidos corretamente
      E o advogado gostaria de visualizar o processo com id 7
      E o advogado informa no campo "vara" o valor "8"
      E o advogado informa no campo "numero_processo" o valor "12314"
      E o advogado informa no campo "natureza" o valor "Guarda"
      E o advogado informa no campo "partes" o valor "Alberto x Alberta"
      E o advogado informa no campo "urgente" o valor "S"
      E o advogado informa no campo "arbitramento" o valor "N"
      E o advogado informa no campo "assistente_social" o valor "Robson Agapito"
      E o advogado informa no campo "data_entrada" o valor "2020-02-12"
      E o advogado informa no campo "data_saida" o valor "2020-02-20"
      E o advogado informa no campo "data_agendamento" o valor "2020-02-13"
      E o advogado informa no campo "status" o valor "Aguardando entrevista"
      E o advogado informa no campo "observacao" o valor "Nada a declarar"
      Quando o advogado clicar em atualizar
      Então o advogado deveria receber uma mensagem de "sucesso"
      E o advogado dever ver o campo "vara" com valor "8"

    Cenário: Simples DELETE com todos os campos preenchidos corretamente
      E o advogado informa no campo "vara" o valor "2"
      E o advogado informa no campo "numero_processo" o valor "12314"
      E o advogado informa no campo "natureza" o valor "Guarda"
      E o advogado informa no campo "partes" o valor "Alberto x Alberta"
      E o advogado informa no campo "urgente" o valor "S"
      E o advogado informa no campo "arbitramento" o valor "N"
      E o advogado informa no campo "assistente_social" o valor "Robson Agapito"
      E o advogado informa no campo "data_entrada" o valor "2020-02-12"
      E o advogado informa no campo "data_saida" o valor "2020-02-20"
      E o advogado informa no campo "data_agendamento" o valor "2020-02-13"
      E o advogado informa no campo "status" o valor "Aguardando entrevista"
      E o advogado informa no campo "observacao" o valor "Nada a declarar"
      E o advogado clicar em salvar
      Quando o advogado clicar em deletar
      E o advogado clicar em visualizar
      Então o advogado deveria receber uma mensagem de "não encontrado"