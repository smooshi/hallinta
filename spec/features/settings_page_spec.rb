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

  it 'company type' do
    click_on('Yritystyyppi')
    expect(page).to have_content 'Kaikki yritystyypit'
  end

  it 'device types' do
    click_on('Laitetyyppi')
    expect(page).to have_content 'Kaikki laitetyypit'
  end

  it 'restaurant evals' do
    click_on('Ravintola-arviot')
    expect(page).to have_content 'Ravintola-arviot'
  end

  it 'restaurant eval types' do
    click_on('Ravintola-arvio tyyppi')
    expect(page).to have_content 'Ravintola-arvio tyyppi'
  end

  it 'user details' do
    expect(page).to have_content 'Käyttäjätiedot'
  end
end