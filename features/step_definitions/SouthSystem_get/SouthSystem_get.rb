require "httparty"

String responsecode = ""

Quando("efetuo a requisição get para o placeholder") do
  @result = ApiUtils.getvalido()
  responsecode = @result.response.code
end

Então("receberei a mensagem de sucesso") do
  expect(responsecode).to eql("200")
end

Quando("efetuo a requisição get para o placeholder com id inválido") do
  @result = ApiUtils.getinvalido()
  responsecode = @result.response.code
end

Então("receberei a mensagem de falha") do
  expect(responsecode).to eql("404")
end
