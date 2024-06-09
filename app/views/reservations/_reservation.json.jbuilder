json.extract! reservation, :id, :created_by, :date, :days, :apt, :bloco, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
