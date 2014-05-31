require 'spec_helper'

describe Search do
 
 	let (:search) {Search.new}

 	before do 

 		@response = search.contactGit('tobyret')

 	end

 	context '#new' do

 		it 'gets successful response from Github API' do
 			expect(@response).to be_an_instance_of(Array)
 		end

 	end


end