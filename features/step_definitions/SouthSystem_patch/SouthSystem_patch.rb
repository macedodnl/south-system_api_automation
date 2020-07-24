require "httparty"

String responsecode = ""

Quando("efetuar a requisição com o id {string}") do |id|
  @result = ApiUtils.patch(id)
  responsecode = @result.response.code
end

Então('recebrei o código de resposta "{string}"') do |code|
  expect(responsecode).to eql(code)
end
