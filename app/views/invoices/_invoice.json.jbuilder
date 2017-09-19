json.extract! invoice, :id, :fecha, :modo_pago, :estado, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
