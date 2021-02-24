json.extract! matrics_detail, :id, :year, :wrote, :passed, :created_at, :updated_at
json.url matrics_detail_url(matrics_detail, format: :json)
