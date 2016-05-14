require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  before :each do
    request.session[:user_id] = User.first.id
  end
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
