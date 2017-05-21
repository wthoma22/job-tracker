require 'rails_helper'

describe 'User can create a comment' do
  scenario 'a user can create a comment' do
    job = create(:job)

    visit company_job_path(job.company, job)

    fill_in "comment[content]", with: "Great Job!"
    click_on "Create Comment"
save_and_open_page
    expect(current_path).to eq company_job_path(job.company, job)
    expect(page).to have_content("Great Job!")
  end
end
