require 'spec_helper'

describe "Portfolio" do

	subject { page }

	describe "Portfolio" do
		
		before { visit portfolio_path }
		
		it { should have_title "Mateusz Jaje | Portfolio" }
		
	end
end
