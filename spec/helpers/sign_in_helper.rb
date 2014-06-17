def sign_in_toby
	visit '/'
	fill_in 'Username', with: 'tobyret'
	click_button 'submit'
end

def sign_in_david
	visit '/'
	fill_in 'Username', with: 'davidmerfield'
	click_button 'submit'
end