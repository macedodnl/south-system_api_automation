class ApiUtils
  include HTTParty
  include Capybara::DSL
  include RSpec::Matchers

  base_uri "https://jsonplaceholder.typicode.com"
  headers "Content-Type" => "application/json"

  #metodos comuns
  def self.corrigirEncode(msg)
    msg.force_encoding("iso-8859-1").encode("utf-8")
    msg.force_encoding("utf-8").encode("utf-8")
  end

  #pages

  def self.getvalido()
    get("/posts",
        headers: { "Content-Type" => "application/json" })
  end

  def self.getinvalido()
    get("/posts/ab",
        headers: { "Content-Type" => "application/json" })
  end

  def self.postvalido(userId, id, title, body)
    post("/posts/",
         body: { userId: userId, id: id, title: title, body: body }.to_json,
         headers: { "Content-Type" => "application/json" })
  end

  def self.patch(id)
    get("/posts/" + id,
        headers: { "Content-Type" => "application/json" })
  end

  def self.delete(id)
    get("/posts/" + id,
        headers: { "Content-Type" => "application/json" })
  end
end
