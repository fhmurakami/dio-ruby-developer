json.extract! post, :id, :title, :author, :score, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
