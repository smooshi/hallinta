require 'rails_helper'

RSpec.describe ContactPerson, type: :model do
  let(:contact_person){ FactoryGirl.create(:contact_person)}

  describe " is created" do

    it "is saved" do
      expect(contact_person).to be_valid
      expect(ContactPerson.count).to eq(1)
    end
    it "has company_id" do
      expect(contact_person.company_id).to eq(1)
    end

    it "has restaurant_id" do
      expect(contact_person.restaurant_id).to eq(1)
    end

    it "has name" do
      expect(contact_person.name).to eq("Silli")
    end
  end
end
