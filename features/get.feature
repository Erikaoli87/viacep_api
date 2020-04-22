#language: pt
Funcionalidade: Consulta API 
Consultar os dados de um endereço a partir de um CEP
@get
Cenario: Consulta com Sucesso
Dado que eu faça um GET na api do ViaCEP informando um cep válido
Entao o retorno deverá exibir as informações do cep informado

Cenario: Consulta com Sucesso
Dado que eu faça um GET na api do ViaCEP informando um cep inválido
Entao o retorno deverá exibir erro