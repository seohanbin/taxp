json.extract! post, :id, :title, :content, :liked, :user_id, :category_id, :created_at, :updated_at
json.url post_url(post, format: :json)