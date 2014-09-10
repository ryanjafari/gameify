# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

API_URL = 'https://www.kimonolabs.com/api/5qmrs778'
API_KEY = '8hPGeCrFvniquWQrteEpwUkeUzD7ZIVN'
API_OPTS = { kimbypage: 1 }

importer = Vgmdbnet::AlbumImporter.new(API_URL, API_KEY, API_OPTS)

importer.results.each do |result|
  album_json = Vgmdbnet::AlbumParser.album_from_json(result)
  tracks_json = Vgmdbnet::AlbumParser.tracks_from_json(result)
  album = Album.create!(album_json)
  # change import style if need validations on tracks
  album.tracks.import [:title, :number, :duration], tracks_json.map(&:values)
end
