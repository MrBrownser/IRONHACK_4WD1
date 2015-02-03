# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p = Project.create name: "Seed created 1", description: "Seed created description"

q = Project.create name: "Seed created 2", description: "Another seed created project description"

Project.create name: "Last seed created (3)", description: "Project with no entries"

p.entries.create hours: 1, minutes: 25, comments: "This is my first entry"
p.entries.create hours: 0, minutes: 38, comments: "Second entry for that project"

q.entries.create hours: 0, minutes: 31, comments: "An entry with no sense"
q.entries.create hours: 2, minutes: 12, comments: "Comment aarghh"