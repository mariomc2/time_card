json.extract! recruiter, :id, :agency_id, :name, :surname, :email, :pass_active, :acc_active, :last_in, :password_digest, :created_at, :updated_at
json.url recruiter_url(recruiter, format: :json)