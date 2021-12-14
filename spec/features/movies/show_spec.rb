require 'rails_helper'

RSpec.describe 'movies show page' do
  before(:each) do
    @universal = Studio.create!(name: 'Universal Studios', location: 'Hollywood')

    @ark = @universal.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')

    @harrison = Actor.create!(name: 'Harrison Ford', age: 79)
    @karen = Actor.create!(name: 'Karen Allen', age: 70)

    @ark.actors << @harrison
    @ark.actors << @karen
    visit "/movies/#{@ark.id}"
  end

  it 'shows the title, creation year, genre of the movie' do
    save_and_open_page
    expect(page).to have_content(@ark.title)
    expect(page).to have_content(@ark.creation_year)
    expect(page).to have_content(@ark.genre)
    expect(page).to have_content(74.5)

  end
end
