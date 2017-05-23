# require 'rails_helper'
#
# describe 'User can see all jobs for city and interest' do
#     before do
#     job_1 = create(:job, level_of_interest: 3, city: "Denver")
#     job_2 = create(:job, level_of_interest: 3, city: "Denver")
#     job_3 = create(:job, level_of_interest: 3, city: "Denver")
#     job_4 = create(:job, level_of_interest: 2, city: "San Diego")
#     job_5 = create(:job, level_of_interest: 2, city: "San Diego")
#   end
#
#   scenario 'a user sees all jobs for a city' do
#     visit ('/jobs?location=Denver')
#     expect(page).to have_content("jobs sorted by city")
#
#   scenario 'a user sees count and average of jobs by level of interest'
#     visit ('/dashboard')
#     expect(page).to have_content("Job count by Level of Interest")
#     expect(page).to have_content("Top Companies by Average Level of Interest")
#
#   scenario 'a user sees count of jobs by location'
#     visit ('/jobs?location=Denver')
#     expect(page).to have_content("Job Count by City")
#   end
# end
