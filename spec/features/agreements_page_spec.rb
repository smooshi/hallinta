require 'rails_helper'
    describe "Agreements page" do
      agreement = FactoryGirl.create(:agreement)
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

      it 'new page' do
        visit new_agreement_path
        click_on('Luo Agreement')
        expect(page).to have_content 'error'
      end

      it 'new page' do
        visit new_agreement_path
        fill_in('agreement_agreement_length', with: '0')
        click_on('Luo Agreement')
      end

      it 'new page' do
        visit new_agreement_path
        click_on('Luo Agreement')
        expect(page).to have_content 'error'
      end

      it 'show page' do
        visit agreement_path(agreement)
        expect(page).to have_content 'Sopimustiedot'
      end

      it 'luo device' do
        visit agreement_path(agreement)
        click_on('Luo Device in agreement')
        expect(page).to have_content 'error'
      end

      it 'luo software' do
        visit agreement_path(agreement)
        click_on('Luo Software in agreement')
        expect(page).to have_content 'error'
      end

      it 'edit agreement' do
        visit edit_agreement_path(agreement)
        expect(page).to have_content 'Editing'
        fill_in('agreement_invoicing_period_length', with: "2")
        click_on('Päivitä Agreement')
      end

      it "edit software in agreement" do
        sia = FactoryGirl.create(:software_in_agreement)
        visit edit_software_in_agreement_path(sia)
        click_on('Päivitä Software in agreement')
      end

      it "edit device in agreement" do
        dia = FactoryGirl.create(:device_in_agreement)
        visit edit_device_in_agreement_path(dia)
        click_on('Päivitä Device in agreement')
      end

      it "new device in agreement fail" do
        visit new_device_in_agreement_path
        click_on('Luo Device in agreement')
        expect(page).to have_content 'error'
      end

      it "new software in agreement fail" do
        visit new_software_in_agreement_path
        click_on('Luo Software in agreement')
        expect(page).to have_content 'error'
      end



    end