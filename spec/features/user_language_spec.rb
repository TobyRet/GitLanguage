require 'spec_helper'
require 'helpers/sign_in_helper'

feature 'user language' do 

	scenario 'returns most popular coding language' do

		sign_in_toby

		expect(page).to have_content('tobyret')
		expect(page).to have_content('Ruby')

		sign_in_david

		expect(page).to have_content('davidmerfield')
		expect(page).to have_content('JavaScript')

	end

	scenario 'starting a new search' do

		sign_in_toby
		click_link 'new search'

		expect(current_path).to eq('/')

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
