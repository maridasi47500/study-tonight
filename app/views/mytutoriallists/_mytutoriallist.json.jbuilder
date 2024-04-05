json.extract! mytutoriallist, :id, :mytutorial_id, :name, :created_at, :updated_at
json.url mytutoriallist_url(mytutoriallist, format: :json)
