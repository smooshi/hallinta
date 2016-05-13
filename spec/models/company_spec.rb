require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:company){ FactoryGirl.create(:company)}

    describe "company is created" do

      it "is saved" do
        expect(company).to be_valid
        expect(Company.count).to eq(1)
      end

      it "has name" do
        expect(company.name).to eq("Comp")
      end

    end
end