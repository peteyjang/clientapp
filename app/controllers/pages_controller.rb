class PagesController < ApplicationController
  def index
  end

  def show
    @person_info = JSON.parse RestClient.post("#{ENV['server_base_url']}/vcsandbox/oauth/userinfo", {}, {Authorization: "Bearer #{session[:access_token]}"})
  end
end
