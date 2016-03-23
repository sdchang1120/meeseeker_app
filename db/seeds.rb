# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Meeseek.create([
  {
    name: 'Sharon',
    address: '7 Pebble Lane, Roslyn Heights, NY 11577',
    latitude: 40.776378,
    longitude: -73.630226
  }, {
    name: 'Meh',
    address: '10 E 21st Street, New York, NY 10010',
    latitude: 40.740112,
    longitude: -73.990071
  }
])
