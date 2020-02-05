json.extract! datacenter, :id, :code, :servers_available, :servers_capacity, :country_id, :created_at, :updated_at
json.url datacenter_url(datacenter, format: :json)
