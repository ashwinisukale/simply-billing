json.extract! transaction, :id, :customer_name, :mobile_number, :product_id, :price, :quantity, :total_amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
