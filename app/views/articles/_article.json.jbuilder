json.extract! article, :id, :titre, :description, :price, :validate, :created_at, :updated_at
json.url article_url(article, format: :json)
