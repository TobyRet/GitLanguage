require 'spec_helper'

feature 'user language' do 

	scenario 'return popular coding language' do

		visit '/'
		fill_in 'Username', with: 'tobyret'
		click_button 'submit'

		expect(page).to have_content('tobyret')

	end

end
