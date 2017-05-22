require 'rails_helper'

describe 'User can create a new contact' do
  scenario 'a user can create a new contact' do
    company = create(:company)

    visit company_path(company)

    fill_in "contact[full_name]", with: "Ronnie"
    fill_in "contact[position]", with: "Hiring Manager"
    fill_in "contact[email]", with: "ronnie@wooo.com"
    click_on "Create Contact"

    expect(current_path).to eq company_path(company)
    expect(page).to have_content("Ronnie")
    expect(page).to have_content("Hiring Manager")
    expect(page).to have_content("ronnie@wooo.com")
  end
end
