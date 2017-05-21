require 'rails_helper'

describe 'User sees one category' do
  scenario 'a user sees a category and its jobs' do

    category = create(:category_with_jobs)
    visit category_path(category)

    expect(page).to have_content(category.title)

    category.jobs.each do |job|
    expect(page).to have_link job.title, company_job_path(job.company, job)
    save_and_open_page
    end
  end
end
