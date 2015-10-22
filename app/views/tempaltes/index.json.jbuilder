json.array!(@tempaltes) do |tempalte|
  json.extract! tempalte, :id, :description, :name, :filename
  json.url tempalte_url(tempalte, format: :json)
end
