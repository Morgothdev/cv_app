require 'spec_helper'

describe Function do

	before do
		@elem = PortfolioElem.create(project_name: "konfa", whens: "last sumer", description: "konferencja")
		@elem.save
		@function = @elem.functions.build(description: "napisanie serwera")
		@function.save
	end

	subject { @function }


	it { should respond_to(:description) }
	it { should respond_to(:portfolio_elem_id) }
	it { should respond_to(:portfolio_elem)}

	it { should be_valid }

	its(:portfolio_elem) { should eq @elem }

	describe "when portfolio_elem_id not exists" do
		before {@function.portfolio_elem_id = nil }
		it { should_not be_valid }
	end
end