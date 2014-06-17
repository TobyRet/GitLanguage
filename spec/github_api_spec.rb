require 'spec_helper'

describe 'GithubAPI' do
 
	let (:contact) { GithubApi.new('tobyret') }
	
	before do 
		@response = contact.contactGit
	end

	context 'contacting Github API' do

		it 'gets successful response from Github API' do
			expect(@response).to be_an_instance_of(Array)
		end

	end
	
end
