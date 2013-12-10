require 'spec_helper'

describe "Sessions" do
    subject { page }

    describe "sign in page " do
        before { visit adminlog_path }

        it { should have_title "Admin Log" } 
        it { should have_content "Login as Admin" }

        describe 'for invalid information' do
            before { click_button "Sign in"}

            it { should have_title "Admin Log" } 
            it { should have_selector "div.alert.alert-error", text: 'Invalid' }
        end

        describe "with valid information" do
            let(:admin) { FactoryGirl.create(:admin) }
            
            before do
                admin.save!
                visit adminlog_path
                fill_in "Login",    with: admin.login
                fill_in "Password", with: admin.password
                click_button "Sign in"
            end

            it { should have_link('Admin sign out',   href: adminout_path) }
            it { should_not have_link('AdminLog',href: adminlog_path) }
            it { should have_link "Settings",   href: edit_admin_path(admin) }
            it { should have_title "Admin Mode" }

            describe "fallowed by signout" do
                before { click_link "Admin sign out" }
                it { should have_link "Admin sign in" }
            end
        end
    end
end
