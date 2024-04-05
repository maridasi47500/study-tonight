json.extract! mytutorial, :id, :name, :pic, :description, :created_at, :updated_at
json.url mytutorial_url(mytutorial, format: :json)
