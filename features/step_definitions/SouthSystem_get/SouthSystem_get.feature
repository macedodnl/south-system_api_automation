#language:pt
@get
Funcionalidade: api get

Contexto: Dado que eu acesse o endpoint

Cenário: Consultando get no jsonplaceholder
Quando efetuo a requisição get para o placeholder
Então receberei a mensagem de sucesso

Cenário: Consultando get no jsonplaceholder com id inválido
Quando efetuo a requisição get para o placeholder com id inválido
Então receberei a mensagem de falha