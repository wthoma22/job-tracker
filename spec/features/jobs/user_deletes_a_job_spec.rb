require 'rails_helper'

  describe "User deletes existing job" do
    scenario "a user can delete a job" do
    job = create(:job)
    company = job.company

    visit company_jobs_path(job.company_id, job)
    click_link "Delete"

    expect(page).to have_content("Developer was successfully deleted!")
  end
end
