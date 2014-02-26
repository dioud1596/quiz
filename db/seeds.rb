quiz = Challenge.create()

query = {
  "la place de kiev ?" => [0, ["Maidan", "Saint-Marc", "Place rouge", "Tin Aimen"]],
  "penalisation des homosexuels, quel pays ?" => [1, ["Nigeria", "Ouganda", "Afghanistan", "Iran"]]
}

query.each do |key, value|
  quiz.questions.create(query: key, good_answer_index: value[0], answers: value[1])
end


