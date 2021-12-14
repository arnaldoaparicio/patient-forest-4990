@universal = Studio.create!(name: 'Universal Studios', location: 'Hollywood')

@ark = @universal.movies.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure')
@shrek = @universal.movies.create!(title: 'Shrek', creation_year: 2001, genre: 'Comedy')


@harrison = Actor.create!(name: 'Harrison Ford', age: 79)
@karen = Actor.create!(name: 'Karen Allen', age: 70)

@ark.actors << @harrison
@ark.actors << @karen
