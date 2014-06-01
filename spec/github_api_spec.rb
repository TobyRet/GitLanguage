require 'spec_helper'

describe GithubAPI do

	scenario 'valid username' do
 
	 	let (:contact) {GithubApi.new('tobyret')}

	 	before do 
	 		@response = contact.contactGit
	 	end

	 	context 'contacting Github Api' do

	 		it 'gets successful response from Github API' do
	 			expect(@response).to be_an_instance_of(Array)
	 		end

	 	end

	 end

	scenario 'invalid username' do

	 	xit 'raises an error' do
	 		contact = GithubApi.new('hiuohohoin')
	 		expect(contact.contactGit).to

	end


end