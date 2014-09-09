# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.create({name: 'Copenhagen'})
Item.create({name: 'Stockholm'})
Item.create({name: 'Vancouver'})
Item.create({name: 'Shanghai'})
User.create({email: 'hi@aol.com', password: 'go'})
Photo.create({:item_image => File.open("#{Rails.root}/public/system/cities/cph.jpg"), :item_id => 1})
Photo.create({:item_image => File.open("#{Rails.root}/public/system/cities/sthlm.jpg"), :item_id => 2})
Photo.create({:item_image => File.open("#{Rails.root}/public/system/cities/van.jpg"), :item_id => 3})
Photo.create({:item_image => File.open("#{Rails.root}/public/system/cities/shang.jpg"), :item_id => 4})

