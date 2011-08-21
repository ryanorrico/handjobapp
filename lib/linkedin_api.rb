class LinkedinApi
  include HTTParty
  require 'linkedin'
  
  format :json
  
  API_KEY = 'heue86hmveky'
  API_SECRET = 'h1aewkKShIUwxfnL'
  

  
  def self.get_profile
    client = LinkedIn::Client.new('heue86hmveky', 'h1aewkKShIUwxfnL')
    rtoken = client.request_token.token
    rsecret = client.request_token.secret
    pin = '880ee8a5-6cab-4f68-a8b5-fbc1319df8a0'
    client.authorize_from_request(rtoken, rsecret, pin)
    client.profile
  end
  

end
