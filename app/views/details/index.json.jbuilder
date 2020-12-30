json.array!(@details) do |detail|
  json.extract! detail, :id, :genre_id, :money
  json.start detail.ate
  json.end detail.date
  json.url detail_url(detail, format: :html)
end