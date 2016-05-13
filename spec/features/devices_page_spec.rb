require 'rails_helper'
describe "Devices page" do
  before :each do
    visit companies_path
    fill_in('email', with: "test@test.com")
    fill_in('password', with: 'testi1')
    click_on('Sign in')
    click_on('Laitteet')
  end

  it 'main page' do
    expect(page).to have_content 'Lista laitteista'
  end

  it 'device types' do
    click_on('Laitetyyppi')
    expect(page).to have_content 'Kaikki laitetyypit'
  end

  it 'edit device' do
    device = FactoryGirl.create(:device)
    visit edit_device_path(device)
    click_on('Päivitä Device')
  end

  it 'new device type' do
    click_on('Laitetyyppi')
    expect(page).to have_content 'Kaikki laitetyypit'
  end

  it 'edit device type' do
    device_type = FactoryGirl.create(:device_type)
    visit edit_device_type_path(device_type)
    click_on('Päivitä Device type')
  end

  it 'new device' do
    click_on('Laitetyyppi')
    click_on('Uusi laite')
    expect(page).to have_content 'Uusi laite'
    click_on('Luo Device')
    expect(page).to have_content 'error'
  end
end