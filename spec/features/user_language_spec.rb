require 'spec_helper'

feature 'user language' do 

	scenario 'returns most popular coding language' do

		visit '/'
		fill_in 'Username', with: 'tobyret'
		click_button 'submit'

		expect(page).to have_content('tobyret')
		expect(page).to have_content('Ruby')

		visit '/'
		fill_in 'Username', with: 'davidmerfield'
		click_button 'submit'

		expect(page).to have_content('davidmerfield')
		expect(page).to have_content('JavaScript')

	end

	scenario 'starting a new search' do

		visit '/'
		fill_in 'Username', with: 'tobyret'
		click_button 'submit'
		click_link 'new search'

		expect(current_path).to eq('/')

	end

end
