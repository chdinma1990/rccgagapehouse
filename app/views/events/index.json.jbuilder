json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :date, :start_time, :end_time, :address, :contact_number, :contact_email, :image, :video
  json.url event_url(event, format: :json)
end