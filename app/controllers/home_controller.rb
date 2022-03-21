class HomeController < ApplicationController
  def set_query(body)
    @@body = body
  end
  def graph_get
    @@query = "{
          users {
            id
            username
                }
              }"

    @@url = "http://0.0.0.0:3000/graphql/"
    @@header = {
      "Content-Type": "application/json"
    }
    # HTTParty.post(
    #   @@url,{
    #   headers: @@header,
    #   body: {"query" => @@query}.to_json}
    # )
  end
  def index
    @users = graph_get
  end
end
