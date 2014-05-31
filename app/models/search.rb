require 'httparty'
require 'json'

class Search < ActiveRecord::Base

	include HTTParty
	
	base_uri = "https://api.github.com/users"

	def contactGit(username)
		response = HTTParty.get("https://api.github.com/users/#{username}/repos", headers: { "User-Agent" => 'GitLanguage'} )
		JSON.parse(response.body)
	end

end
