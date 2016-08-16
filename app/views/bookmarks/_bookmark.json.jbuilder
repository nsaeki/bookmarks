json.extract! bookmark, :id, :type, :client, :position, :note, :user_id, :document_id, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)