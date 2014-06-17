require 'httparty'
require 'json'

class GithubApi

	include HTTParty
	
	base_uri = "https://api.github.com/users"

	def initialize(username)
		@username = username
	end

	def contactGit

		response = HTTParty.get("https://api.github.com/users/#{@username}/repos", 
			headers: { 
				'User-Agent' => 'GitLanguage',
				'Authorization' => 'token 3b9b079f14dfe6a2c6127d078edb082bcc852a53'
				})

		JSON.parse(response.body)
	end

end