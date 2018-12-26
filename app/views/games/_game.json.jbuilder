json.extract! game, :id, :title, :description, :master, :user_id, :created_at, :updated_at
json.url game_url(game, format: :json)
