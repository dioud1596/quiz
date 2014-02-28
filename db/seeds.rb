user = User.new(
  :first_name => "Bob",
  :last_name => "Papillard",
  :email => "bob@lewagon.org",
  :password => '12345678'
)

user.save!(:validate => false)

quiz = User.first.challenges.create()

query = {
  "Comment s'appelle la place de Kiev sur laquelle se concentraient les manifs ?" => [0, ["Maidan", "Saint-Marc", "Place rouge", "Tiananmen"]],
  "Quel est le pays de cette liste où l'homosexualité n'est pas encore passible de peine de mort ?" => [1, ["Nigeria", "Ouganda", "Afghanistan", "Iran"]],
  "Qui est le chef du Wagon ?" => [3, ["Paillards", "Fred", "Olivier", "Charlotte"]],
  "Qui vient d'entrer en Ukraine ?" => [1, ["La France", "La Russie", "La Chine", "La Pologne"]],
  "Que veut construire NKM à la Gare du Nord ?" => [1, ["Un hôpital psychiatrique", "Un Centre d'affaire", "Un bureau de vote", "Le nouvel Hôtel de Ville de Paris"]]
}

query.each do |key, value|
  quiz.questions.create(query: key, good_answer_index: value[0], possible_choices: value[1])
end


