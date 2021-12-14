require 'rails_helper'

RSpec.describe 'studios and movie titles' do
  it 'lists the names of the studios and their associated movies' do
  universal = Studio.create!(name: 'Universal Studios', location: 'Hollywood')

  universal.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')
  universal.movies.create!(title: 'Shrek', creation_year: 2001, genre: 'Comedy')
  visit '/studios'

  expect(page).to have_content(universal.name)
end
end
