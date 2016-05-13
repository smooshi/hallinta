require 'rails_helper'
    describe "Agreements page" do
      before :each do
        visit companies_path
        fill_in('email', with: "test@test.com")
        fill_in('password', with: 'testi1')
        click_on('Sign in')
        click_on('Sopimukset')
      end

      it 'main page' do
        expect(page).to have_content 'Lista sopimuksista'
      end

      it 'new page' do
        visit new_agreement_path
        expect(page).to have_content 'New Agreement'
      end

    end