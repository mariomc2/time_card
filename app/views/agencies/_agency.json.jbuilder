json.extract! agency, :id, :name, :email, :pass_active, :acc_active, :last_in, :password_digest, :created_at, :updated_at
json.url agency_url(agency, format: :json)