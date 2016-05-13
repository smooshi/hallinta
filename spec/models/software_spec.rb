require 'rails_helper'

RSpec.describe Software, type: :model do
  let(:software){ FactoryGirl.create(:software)}

  describe " is created" do

    it "is saved" do
      expect(software).to be_valid
      expect(Software.count).to eq(1)
    end
  end
end
