require 'rails_helper'

RSpec.describe 'studios and movie titles' do
  it 'lists the names of the studios and their associated movies' do
  universal = Studio.create!(name: 'Universal Studios', location: 'Hollywood')

  ark = universal.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')
  shrek = universal.movies.create!(title: 'Shrek', creation_year: 2001, genre: 'Comedy')

  made_up = Studio.create!(name: 'Made Up Studios', location: 'Mexico')

  tenant = made_up.movies.create!(title: 'The Tentant', creation_year: 1991, genre: 'Horror')
  hunt = made_up.movies.create!(title: 'Easter Egg Hunt', creation_year: 2001, genre: 'Thriller')
  visit '/studios'

  save_and_open_page
  expect(page).to have_content(universal.name)
  expect(page).to have_content(ark.title)
  expect(page).to have_content(shrek.title)
  expect(page).to have_content(made_up.name)
  expect(page).to have_content(tenant.title)
  expect(page).to have_content(hunt.title)
end
end
