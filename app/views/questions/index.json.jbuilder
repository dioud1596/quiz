json.array!(@questions) do |question|
  json.extract! question, :id, :query, :good_answer_index, :desc, :url, :possible_choices, :points
  json.url question_url(question, format: :json)
end
