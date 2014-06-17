require './lib/language_calculator'
require './lib/github_api.rb'

class SearchesController < ApplicationController

	def new
		@search = Search.new
	end

	def create
		@search = Search.new params[:search].permit(:username)
		@contact = GithubApi.new(@search[:username])

		if @contact.contactGit.instance_of?(Array)
			@calculation = LanguageCalculator.new(@contact.contactGit)
			render 'show'
		else
			flash[:notice] = 'Sorry, user not found'
			render 'new'
		end
		
	end
	
end

