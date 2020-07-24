require "time"
require "base64"
require "net/smtp"
require "rake"

task :specs, [:tags] do |task, args|
  #time = Time.now.utc.iso8601.tr(":", "")
  #report = "--format html --out=log/report_#{time}.json"
  sh "cucumber #{args[:tags]}"
end

#criando email
marker = "AUNIQUEMARKER"
time = Time.now.utc.iso8601
report_path = "test_report.html"
file_encoded_content = Base64.encode64(File.open(report_path, "rb").read)

body = <<-EOF
Mensagem enviada automaticamente ao final da execução dos testes automatizados de api.
Fim da execução: #{time}
Em anexo o relatório de execução: Api_Test_Report.html
EOF

msg = <<-EOF
From: QA - Api Automation <>
To: All <>, <>
Subject: Report automation run at #{time}
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary=#{marker}
--#{marker}
EOF

part2 = <<-EOF
Content-Type: text/plain
Content-Transfer-Encoding:8bit

#{body}
--#{marker}
EOF

attch = <<-EOF
Content-Type: multipart/mixed; name = "Api_Test_Report.html"
Content-Transfer-Encoding:base64
Content-Disposition: attachment; filename = "Api_Test_Report.html"

#{file_encoded_content}
--#{marker}--
EOF

msg_and_attach = msg + part2 + attch

task :enviar_report do
  Net::SMTP.new("smtp..com.br", 587).start("automacaodomain.com", "", "", "login") do |smtp|
    smtp.send_message msg_and_attach,
                      "",
                      "",
                      ""
  end
rescue => e
  puts e
end
