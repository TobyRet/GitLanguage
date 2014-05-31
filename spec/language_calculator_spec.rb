require 'spec_helper'
require './lib/language_calculator'

describe 'Language Calulator' do 

	let(:search) { Search.new }
	let(:results) { search.contactGit('tobyret') }
	let(:calculation) { LanguageCalculator.new(results) }

	it "returns an array of languages used from the API" do

		expect(calculation.find_languages).to include('Ruby')

	end

	it "returns the most popular language" do

		expect(calculation.most_common).to eq('Ruby')

	end

end