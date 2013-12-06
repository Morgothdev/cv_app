require 'spec_helper'

describe Portfolio do
 	
 	before do
 		@elem = Portfolio.create(project_name: "konfa", whens: "last sumer", description: "konferencja")
 		@elem.save
 	end

 	subject { @elem }

 	it {should respond_to(:project_name) }
 	it {should respond_to(:whens) }
 	it {should respond_to(:description) }
 	it {should respond_to(:functions)}

 	describe "when name is not present" do
 		before { @elem.project_name = "" }
 		it { should_not be_valid }
 	end

 	 describe "when description is not present" do
 		before { @elem.description = "" }
 		it { should_not be_valid }
 	end

 	 describe "when when is not present" do
 		before { @elem.whens = "" }
 		it { should_not be_valid }
 	end

 	describe "when project_name is too long" do
 		before { @elem.project_name = "a"*51 }
 		it { should_not be_valid }
 	end

	describe "when when-field is too long" do
 		before { @elem.whens = "a"*41 }
 		it { should_not be_valid }
 	end

 	describe "when description is too long" do
 		before { @elem.description = "a"*2001 }
 		it { should_not be_valid }
 	end
end
