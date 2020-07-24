#language:pt

@delete
Funcionalidade: deletar usuário

Esquema do Cenário: deletar usuário com sucesso
Quando efetuar a requisição para deletar o usuário infomando o id "<id>"
Então recebrei o código de resposta "<code>" da operação


Exemplos:
|id  |code |
|11  |"200"|
|12  |"200"|
|13  |"200"|
|14  |"200"|
|15  |"200"|
|16  |"200"|
|17  |"200"|
|18  |"200"|
|qw  |"404"|
|!@  |"404"|