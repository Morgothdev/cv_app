require 'spec_helper'

describe Admin do
    before do 
        @admin = Admin.new(login: "AdminUser", password: "adminlog", password_confirmation: "adminlog")
    end

    subject { @admin }

    it { should respond_to(:login) }
    it { should respond_to(:password) }  
    it { should respond_to(:password_confirmation) }  

    it { should be_valid }

    describe "when login is not present" do
        before {@admin.login = " "}
        it { should_not be_valid }
    end

    describe "remember token" do
        before { @admin.save }
        its(:remember_token) { should_not be_blank }
    end
end