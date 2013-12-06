require 'spec_helper'

describe Function do

	before do
		@elem = Portfolio.create(project_name: "konfa", whens: "last sumer", description: "konferencja")
		@elem.save
		@function = @elem.functions.build(description: "napisanie serwera")
		@function.save
	end

	subject { @function }


	it { should respond_to(:description) }
	it { should respond_to(:portfolio_id) }
	it { should respond_to(:portfolio)}

	it { should be_valid }

	its(:portfolio) { should eq @elem }

	describe "when portfolio_id not exists" do
		before {@function.portfolio_id = nil }
		it { should_not be_valid }
	end
end