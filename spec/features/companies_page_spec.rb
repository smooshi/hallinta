require 'rails_helper'
describe "Company page" do
  it "not logged in" do
    visit companies_path
    expect(page).to have_content 'Log in Email Password'
  end
end

describe "the signin process", :type => :feature do
  let(:user){ FactoryGirl.create(:user, :password => "testi1") }

    it "is saved" do
      expect(user).to be_valid
      expect(User.count).to eq(1)
    end

    it "has email" do
      expect(user.email).to eq("test@test.com")
    end



  it "signs me in" do
    visit companies_path
      fill_in('email', with: "test@test.com")
      fill_in('password', with: 'testi1')
    save_and_open_page
    click_on('Sign in')
    expect(page).to have_content 'Logged'
  end
end