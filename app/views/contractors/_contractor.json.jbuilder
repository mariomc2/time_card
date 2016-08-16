json.extract! contractor, :id, :name, :surname, :email, :pass_active, :acc_active, :last_in, :password_digest, :created_at, :updated_at
json.url contractor_url(contractor, format: :json)