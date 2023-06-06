# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

tasks = [
  {
    name: "Leetcode challenge",
    description: "morning exercise",
    position: 1
  },
  {
    name: "Ruby exercism",
    description: "get better with ruby",
    position: 2
  },
  {
    name: "Terminal App (OOD)",
    description: "Using Object Oriented Design to build a terminal app",
    position: 3
  },
  {
    name: "Stimulus 1-D drag and drop",
    description: "build a 1 dimension drag and drop function",
    position: 4
  },
  {
    name: "Stimulus 2-D drag and drop",
    description: "build a 2 dimension drag and drop function",
    position: 5
  },
  {
    name: "JavaScript animation",
    description: "Use JS to change web app styles (CSS)",
    position: 6
  }
]

tasks.each do |task|
  Task.create(task)
end