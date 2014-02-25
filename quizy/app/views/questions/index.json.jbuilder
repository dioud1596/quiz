json.array!(@questions) do |question|
  json.extract! question, :id, :query, :correct_answer_id, :desc, :url, :category
  json.url question_url(question, format: :json)
end
