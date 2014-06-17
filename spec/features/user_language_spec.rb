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

end
