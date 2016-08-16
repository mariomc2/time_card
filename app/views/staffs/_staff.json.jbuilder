json.extract! staff, :id, :contractee_id, :name, :surname, :email, :pass_active, :acc_active, :last_in, :password_digest, :created_at, :updated_at
json.url staff_url(staff, format: :json)