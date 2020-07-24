#language:pt

@post
Funcionalidade: cadastrar usuário

Esquema do Cenário: cadastro de usuário com sucesso
Quando efetuar a requisição com "<userId>", "<id>", "<title>", "<body>"
Então recebrei o código "<code>"


Exemplos:
|userId |id  |title |body   |code |
|       |11  |tst11 |tst    |"201"|
|12     |    |tst12 |tst    |"201"|
|13     |13  |      |tst    |"201"|
|14     |14  |tst14 |       |"201"|
|15     |15  |tst15 |tst    |"201"|
|       |    |      |       |"201"|
|!!     |#   |$$$$$ |!@#    |"201"|
|ø↕     |18  |tst18 |tst    |"201"|
|19     |ø↕  |tst19 |tst    |"201"|
|20     |20  |ø↕ø↕ø |tst    |"201"|
|21     |21  |tst20 |ø↕     |"201"|