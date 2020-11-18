class Api::ThirdPartiesController < ApplicationController
  def index
    # response = HTTP.get("https://developers.zomato.com/api/v2.1/categories")
    # render json: response.parse
    response = HTTP
      .headers({
        "Authorization" => "Bearer #{Rails.application.credentials.third_party_api[:api_key]}",
      })
      .get("https://developers.zomato.com/api/v2.1/categories")
    render json: response.parse
  end
end
