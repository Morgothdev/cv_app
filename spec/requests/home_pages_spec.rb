require 'spec_helper'

describe "HomePages" do

	subject { page }

	describe "Home Page" do
		before { visit root_path }
		
		it { should have_title "Mateusz Jaje | Start" }
		it { should have_content "Witam serdecznie" }

		
	end
end
