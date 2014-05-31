class SearchesController < ApplicationController

	def new
		@search = Search.new
	end

	def create
		@search = Search.new params[:search].permit(:username)
		if @search.save
			render 'show'
		else
			render 'new'
		end
	end

end
