require 'rails_helper'

RSpec.describe User, type: :model do

  describe "user with a proper password" do
    let(:user){ FactoryGirl.create(:user, :password => "testi1") }
    let(:admin){ FactoryGirl.create(:admin, :password => "testi1") }

    it "is saved" do
      expect(user).to be_valid
      expect(User.count).to eq(1)
    end

    it "is saved" do
      expect(admin).to be_valid
      expect(User.count).to eq(1)
    end

    it "has fullname" do
      expect(user.full_name).to eq("Pekka Pouta")
    end

    it "is not admin" do
      expect(user.admin).to eq(false)
    end

    it "has email" do
      expect(user.email).to eq("test@test.com")
    end

    it "has fullname" do
      expect(admin.full_name).to eq("Admin Batman")
    end

    it "is admin" do
      expect(admin.admin).to eq(true)
    end

    it "has email" do
      expect(admin.email).to eq("admin@admin.com")
    end

  end
end
