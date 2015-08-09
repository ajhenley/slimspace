json.array!(@bookings) do |booking|
  json.extract! booking, :id, :start, :end, :user_id, :space_id
  json.url booking_url(booking, format: :json)
end
