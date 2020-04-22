Dado("que eu faça um GET na api do ViaCEP informando um cep válido") do
  @get_cep = HTTParty.get "https://viacep.com.br/ws/01001000/json/"
end

Entao("o retorno deverá exibir as informações do cep informado") do
  # puts @get_cep.body
  puts @get_cep.message
  puts @get_cep.code
  expect(@get_cep.code).to eq 200
  puts "ibge: #{@get_cep["ibge"]}"
end

Dado("que eu faça um GET na api do ViaCEP informando um cep inválido") do
  @get_cep = HTTParty.get "https://viacep.com.br/ws/01001999/json/"
end

Entao("o retorno deverá exibir erro") do
  #  puts @get_cep.body
  puts @get_cep.message
  puts @get_cep.code
  expect(@get_cep.code).to eq 200
  expect(@get_cep.body).to eq "{\n  \"erro\": true\n}"
end
