class ControllerHelpers
  def login_as_admin
    #admin = FactoryGirl.create(:user)
    login_as(User.first)
  end

  def login_as(user)
    request.session[:user_id] = user.id
  end
end