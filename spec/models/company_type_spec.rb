require 'rails_helper'

RSpec.describe CompanyType, type: :model do
  let(:company_type){ FactoryGirl.create(:company_type)}
  describe "it is created" do

    it "is saved" do
      expect(company_type).to be_valid
      expect(CompanyType.count).to eq(1)
    end
  end
end