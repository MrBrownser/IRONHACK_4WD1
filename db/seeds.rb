# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create name: "Seed created 1", description: "Seed created description"

Project.create name: "Seed created 2", description: "Another seed created project description"

Project.create name: "Last seed created (3)", description: "I'm lazy"