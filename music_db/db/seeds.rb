# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Genre.create(genre: 'pop')
Genre.create(genre: 'rock')
Genre.create(genre: 'classic rock')

genres = Genre.create( [ {genre: 'eighties'}, {genre: 'rap'} ] )

Artist.create( name: 'Michael Jackson', genre_id: Genre.first )