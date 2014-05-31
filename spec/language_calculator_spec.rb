require 'spec_helper'
require './lib/language_calculator'

describe 'Language Calulator' do 

	it "returns an array of languages used from the API" do

		search = Search.new
		results = search.contactGit('tobyret')
		calculation = LanguageCalculator.new(results)

		expect(calculation.find_languages).to include('Ruby')

	end

end