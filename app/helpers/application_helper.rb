module ApplicationHelper
  def new_oauth_token_path
    "#{ENV['server_base_url']}/vcsandbox/oauth/authorize?client_id=#{ENV['oauth_token']}&redirect_uri=#{ENV['oauth_redirect_uri']}&scope=public sso&response_type=code"
  end
end
