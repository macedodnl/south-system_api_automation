#language:pt

@post
Funcionalidade: cadastrar usuário

Esquema do Cenário: cadastro de usuário com sucesso
Quando efetuar a requisição com "<userId>", "<id>", "<title>", "<body>"
Então recebrei o código "<code>"


Exemplos:
|userId |id  |title |body   |code |
|11     |11  |tst11 |tst    |"201"|
|12     |12  |tst12 |tst    |"201"|
|13     |13  |tst13 |tst    |"201"|
|14     |14  |tst14 |tst    |"201"|
|15     |15  |tst15 |tst    |"201"|
|16     |16  |tst16 |tst    |"201"|
|17     |17  |tst17 |tst    |"201"|
|18     |18  |tst18 |tst    |"201"|
|19     |19  |tst19 |tst    |"201"|
|20     |20  |tst20 |tst    |"201"|
|21     |21  |tst21 |tst    |"201"|