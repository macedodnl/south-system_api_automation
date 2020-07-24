require "base64"
require "net/smtp"
require "time"
require "report_builder"
require_relative "../../Rakefile.rb"

at_exit do
  ReportBuilder.input_path = "log/report.json"
  ReportBuilder.configure do |config|
    config.report_types = [:json, :html]
    options = {
      report_title: "Automação API South System",
    }
    ReportBuilder.build_report options
  end
end
