require 'spec_helper'
require 'helpers/sign_in_helper'

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

	context 'Validations' do 

		it 'user has to provide and existing Github username' do
			
			sign_in_fakeuser

			expect(page).to have_content('Sorry, user not found')

		end

		it 'provides a notification if there is no favourite language' do


		end

		it 'can determine if there is more than one favourite language' do
		end

	end
	
end
