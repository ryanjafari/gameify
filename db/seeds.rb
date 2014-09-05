# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

API_URL = 'https://www.kimonolabs.com/api/5qmrs778'
API_KEY = '8hPGeCrFvniquWQrteEpwUkeUzD7ZIVN'

response = RestClient.get API_URL,
                          params: { apikey: API_KEY,
                                    kimbypage: 1,
                                    kimwithurl: 1,
                                    kimhash: 1,
                                    kimindex: 1 }

puts JSON.parse(response)
