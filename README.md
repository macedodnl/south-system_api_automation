South-System_Api_automation

1 - Intalar ruby

2 - Clone or download repository

3 - Intalar bundle "gem intall bundle"

4 - Instalar as demais gems "bundle install"

5 - Execução dos testes:

Obs.: Está configurada a execução atraves do chrome_headless para CI.

6.1 - Executar os testes de forma padrão:

 ex.: "cucumber -t @Login"

      "cucumber"

6.2 - Run and send report in email:

ex.: "cucumber -t @Login & rake enviar_report"

     "cucumber & rake enviar_report"

Obs.: O relatório pode ser enviado sob demanda, através do comando "sh bundle exec rake enviar_report"

Obs.: É necessária a configuração das contas de e-mail no arquivo Rakefile.rb
