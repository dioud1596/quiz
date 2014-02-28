# user = User.new(
#   :first_name => "Bob",
#   :last_name => "Papillard",
#   :email => "bob@lewagon.org",
#   :password => '12345678'
# )

# user.save!(:validate => false)

quiz = User.first.challenges.create()

query = {
  "la place de kiev ?" => [0, ["Maidan", "Saint-Marc", "Place rouge", "Tin Aimen"]],
  "penalisation des homosexuels, quel pays ?" => [1, ["Nigeria", "Ouganda", "Afghanistan", "Iran"]]
}

query.each do |key, value|
  quiz.questions.create(query: key, good_answer_index: value[0], possible_choices: value[1])
end


