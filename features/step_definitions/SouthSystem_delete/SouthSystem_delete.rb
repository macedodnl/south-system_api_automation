require "httparty"

String responsecode = ""

Quando("efetuar a requisição para deletar o usuário infomando o id {string}") do |id|
  @result = ApiUtils.delete(id)
  responsecode = @result.response.code
end

Então('recebrei o código de resposta "{string}" da operação') do |code|
  expect(responsecode).to eql(code)
end
