require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:role){ FactoryGirl.create(:role)}
  describe "it is created" do

    it "is saved" do
      expect(role).to be_valid
      expect(Role.count).to eq(1)
    end
  end
end