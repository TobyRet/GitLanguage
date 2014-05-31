require 'spec_helper'
require './lib/language_calculator'
require './lib/github_api.rb'

describe 'Language Calculator' do 

	let(:contact) { GithubApi.new('tobyret') }
	let(:results) { contact.contactGit }
	let(:calculation) { LanguageCalculator.new(results) }

	it "returns an array of languages used from the API" do

		expect(calculation.find_languages).to include('Ruby')

	end

	it "returns the most popular language" do

		expect(calculation.most_common).to eq('Ruby')

	end

end