require 'faker'
require_relative '../app/models/article.rb'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating fake data..."

10.times do
    title = Faker::TvShows::Stargate.character
    content = Faker::TvShows::Stargate.quote
    article = Article.new(title: title, content: content)
    article.save!
end

puts "Job finished... enjoy it"