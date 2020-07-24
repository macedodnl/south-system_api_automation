#language:pt

@patch
Funcionalidade: buscar usuário

Esquema do Cenário: buscar usuário com sucesso e sem sucesso
Quando efetuar a requisição com o id "<id>"
Então recebrei o código de resposta "<code>"


Exemplos:
|id  |code |
|11  |"200"|
|!!  |"404"|
|    |"200"|
|ø↕  |"404"|
|15  |"200"|
|16  |"200"|
|17  |"200"|
|18  |"200"|
|qw  |"200"|
|qw  |"404"|