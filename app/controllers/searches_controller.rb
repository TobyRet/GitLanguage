require './lib/language_calculator'
require './lib/github_api.rb'

class SearchesController < ApplicationController

	def new
		@search = Search.new
	end

	def create
		@search = Search.new params[:search].permit(:username)
		@contact = GithubApi.new(username)
		@calculation = LanguageCalculator.new(@contact.contactGit)	
		
		if @search.save
			render 'show'
		else
			render 'new'
		end
	end

	def username
		@search[:username]
	end

end
