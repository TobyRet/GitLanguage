require 'spec_helper'
require './lib/language_calculator'

describe 'Language Calulator' do 

	let(:search) { Search.new }
	let(:results) { search.contactGit('tobyret') }
	let(:calculation) { LanguageCalculator.new(results) }

	it "returns an array of languages used from the API" do

		expect(calculation.find_languages).to include('Ruby')

	end

	it "counts the number of languages" do



	end

end