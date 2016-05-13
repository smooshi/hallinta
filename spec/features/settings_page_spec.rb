require 'rails_helper'
describe "Settings page" do
  before :each do
    visit companies_path
    fill_in('email', with: "test@test.com")
    fill_in('password', with: 'testi1')
    click_on('Sign in')
    click_on('Asetukset')
  end

  it 'main page' do
    expect(page).to have_content 'Asetukset'
  end

  it 'software' do
    click_on('Ohjelmisto')
    expect(page).to have_content 'Kaikki ohjelmistot'
  end

  it 'software edit' do
    software = FactoryGirl.create(:software)
    visit edit_software_path(software)
    click_on('Päivitä Software')
  end

  it 'new software' do
    click_on('Ohjelmisto')
    click_on('Uusi ohjelmisto')
    fill_in('software_name', with: "Company1")
    fill_in('software_identifier', with: "e@e.com")
    click_on('Luo Software')
  end

  it 'new software fail' do
    click_on('Ohjelmisto')
    click_on('Uusi ohjelmisto')
    click_on('Luo Software')
    expect(page).to have_content 'error'
  end

  it 'company type' do
    click_on('Yritystyyppi')
    expect(page).to have_content 'Kaikki yritystyypit'
  end

  it 'new company type' do
    click_on('Yritystyyppi')
    click_on('Uusi yritystyyppi')
    fill_in('company_type_name', with: "comp")
    fill_in('company_type_description',with: "bleh" )
    click_on('Luo Company type')
  end

  it 'device types' do
    click_on('Laitetyyppi')
    expect(page).to have_content 'Kaikki laitetyypit'
  end

  it 'new device types' do
    click_on('Laitetyyppi')
    click_on('Luo uusi laitetyyppi')
    fill_in('device_type_name', with: "comp")
    fill_in('device_type_total_price',with: "1" )
    click_on('Luo Device type')
  end

  it 'restaurant types' do
    click_on('Ravintolatyyppi')
    expect(page).to have_content 'Listing Restaurant Types'
  end

  it 'restaurant types' do
    click_on('Ravintolatyyppi')
    click_on('New Restaurant type')
    fill_in('restaurant_type_name', with: "comp")
    fill_in('restaurant_type_description',with: "iik" )
    click_on('Luo Restaurant type')
  end

  it "edit restaurant type" do
    rt = FactoryGirl.create(:restaurant_type)
    visit edit_restaurant_type_path(rt)
    click_on('Päivitä Restaurant type')
  end

  it 'restaurant evals' do
    click_on('Ravintola-arviot')
    expect(page).to have_content 'Ravintola-arviot'
  end

  it 'new restaurant evals' do
    visit new_restaurant_evaluation_path
    expect(page).to have_content 'Ravintola-arviot'
  end

  it 'edit rest eval' do
    re = FactoryGirl.create(:restaurant_evaluation)
    visit edit_restaurant_evaluation_path(re)
    click_on('Päivitä Restaurant evaluation')
  end

  it 'new restaurant evals' do
    visit new_restaurant_evaluation_path
    fill_in('restaurant_evaluation_value', with: "1")
    fill_in('restaurant_evaluation_evaluation_comment', with: "beep")
    click_on('Luo Restaurant evaluation')
  end

  it 'new restaurant evals fail' do
    visit new_restaurant_evaluation_path
    click_on('Luo Restaurant evaluation')
    expect(page).to have_content 'error'
  end

  it 'restaurant eval types' do
    click_on('Ravintola-arvio tyyppi')
    expect(page).to have_content 'Ravintola-arvio tyyppi'
  end

  it 'new restaurant eval types' do
    click_on('Ravintola-arvio tyyppi')
    click_on('New Restaurant evaluation type')
    fill_in('restaurant_evaluation_type_name', with: "eval")
    fill_in('restaurant_evaluation_type_description',with: "Blil" )
    click_on('Luo Restaurant evaluation type')
  end

  it "edit rest eval types" do
    ret = FactoryGirl.create(:restaurant_evaluation_type)
    visit edit_restaurant_evaluation_type_path(ret)
    click_on("Päivitä Restaurant evaluation type")
    expect(page).to have_content 'Ravintolatyyppi'
  end

  it 'user details' do
    click_on('Käyttäjätiedot')
    expect(page).to have_content 'Käyttäjätiedot'
  end

  it 'role' do
    click_on('Käyttäjäroolit')
    expect(page).to have_content 'Listing Roles'
  end

  it 'new role' do
    click_on('Käyttäjäroolit')
    click_on('New Role')
    fill_in('role_name', with: "eval")
    fill_in('role_description',with: "Blil" )
    click_on('Luo Role')
  end

  it 'edit role' do
    role = FactoryGirl.create(:role)
    visit edit_role_path(role)
    click_on('Päivitä Role')
  end

end