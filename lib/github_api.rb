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
			headers: { "User-Agent" => 'GitLanguage' } )

		JSON.parse(response.body)
	end

end
