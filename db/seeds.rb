# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create( name: 'admin', email: 'rpgjaguar@gmail.com', password: 'admin', admin: true )
User.create( name: 'happyhappy', email: 'rpg.jaguar@gmail.com', password: 'test', admin: false )
User.create( name: 'joyjoy', email: 'r.p.g.jaguar@gmail.com', password: 'admin', admin: false )
User.create( name: 'big', email: 'r.pg.jaguar@gmail.com', password: 'admin', admin: false )
User.create( name: 'small', email: 'rpg.jag.uar@gmail.com', password: 'admin', admin: false )