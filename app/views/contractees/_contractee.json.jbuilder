json.extract! contractee, :id, :name, :email, :pass_active, :acc_active, :last_in, :password_digest, :created_at, :updated_at
json.url contractee_url(contractee, format: :json)