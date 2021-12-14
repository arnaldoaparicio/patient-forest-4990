require 'rails_helper'

RSpec.describe 'movies show page' do
  before(:each) do
    @universal = Studio.create!(name: 'Universal Studios', location: 'Hollywood')

    @ark = @universal.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')

    visit "/movies/#{@ark.id}"
  end

  it 'shows the title, creation year, genre of the movie' do
    expect(page).to have_content(@ark.name)
  end
end
