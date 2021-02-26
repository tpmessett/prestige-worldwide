require 'faker'
require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

locations = [ ["Monaco", "Monaco, Monaco"], ["London", "Chelsea Harbour Dr, Fulham, London SW10 0XG"], ["Capri", "Capri, Campania, Italy"], ["Lisbon", "Lisbon, Área Metropolitana de Lisboa, Portugal"]]
i = 1
20.times do
  url = URI.open('https://source.unsplash.com/random?superyacht')
  yacht_location = locations.sample
  number = rand(150...1000)
  yacht = Yacht.new(
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    yacht_name: Faker::Superhero.name,
    cost_per_night: number,
    yacht_location: yacht_location[0],
    user_id: 1,
    Address: yacht_location[1]
  )
  yacht.photo.attach(io: url, filename: "yacht_#{i}.jpg", content_type: 'image/jpg')
  yacht.save!
  puts 'done'
  puts i
  i += 1
end

4.times do
  url = URI.open('https://source.unsplash.com/random?superyacht')
  yacht_location = ["St Tropez", "Quai de l'Épi, Saint-Tropez, Provence-Alpes-Côte d'Azur, France"]
  number = rand(1001...2000)
  yacht = Yacht.new(
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    yacht_name: Faker::Superhero.name,
    cost_per_night: number,
    yacht_location: yacht_location[0],
    user_id: 1,
    Address: yacht_location[1]
  )
  yacht.photo.attach(io: url, filename: "yacht_#{i}.jpg", content_type: 'image/jpg')
  yacht.save!
  puts 'done'
  puts i
  i += 1
end

4.times do
  url = URI.open('https://source.unsplash.com/random?superyacht')
  yacht_location = ["St Tropez", "Quai de l'Épi, Saint-Tropez, Provence-Alpes-Côte d'Azur, France"]
  number = rand(100...500)
  yacht = Yacht.new(
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    yacht_name: Faker::Superhero.name,
    cost_per_night: number,
    yacht_location: yacht_location[0],
    user_id: 1,
    Address: yacht_location[1]
  )
  yacht.photo.attach(io: url, filename: "yacht_#{i}.jpg", content_type: 'image/jpg')
  yacht.save!
  puts 'done'
  puts i
  i += 1
end
puts 'all done'

