json.extract! product, :id, :name, :company, :description, :quantity, :buy_price, :sell_price, :location, :created_at, :updated_at
json.url product_url(product, format: :json)
