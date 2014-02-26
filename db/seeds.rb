# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


quiz = Challenge.create()

query = {
  "la place de kiev ?" => [0, ["Maidan", "Saint-Marc", "Place rouge", "Tin Aimen"]],
  "penalisation des homosexuels, quel pays ?" => [1, ["Nigeria", "Ouganda", "Afghanistan", "Iran"]]
}



query.each do |key, value|
  quiz.questions.create(query: key, good_answer_index: value[0], answers: value[1])
end


