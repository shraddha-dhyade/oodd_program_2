json.extract! listing, :id, :location, :square_footage, :year_built, :style, :list_price, :floors, :basement, :current_house_owner, :contact, :created_at, :updated_at
json.url listing_url(listing, format: :json)
