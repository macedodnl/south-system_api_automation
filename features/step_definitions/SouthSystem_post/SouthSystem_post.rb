require "httparty"

String responsecode = ""

Quando("efetuar a requisição com {string}, {string}, {string}, {string}") do |userId, id, title, body|
  @result = ApiUtils.postvalido(userId, id, title, body)
  responsecode = @result.response.code
end

Então('recebrei o código "{string}"') do |code|
  expect(responsecode).to eql(code)
end
