require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :phone_number => "MyString",
      :role_id => 1,
      :currently_employed => false,
      :admin => false,
      :encrypted_password => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_phone_number[name=?]", "user[phone_number]"

      assert_select "input#user_role_id[name=?]", "user[role_id]"

      assert_select "input#user_currently_employed[name=?]", "user[currently_employed]"

      assert_select "input#user_admin[name=?]", "user[admin]"

      assert_select "input#user_encrypted_password[name=?]", "user[encrypted_password]"
    end
  end
end
