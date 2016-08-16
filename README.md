# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

$ bundle install --without production

# TABLES

$ rails generate scaffold Agency name:string email:string pass_active:boolean acc_active:boolean last_in:datetime password_digest:string
- Agencies
	-- name:string
	-- email:string
	-- pass_active:boolean
	-- acc_active:boolean
	-- last_in:datetime
	-- password_digest:string

$ rails generate scaffold Recruiter agency_id:integer name:string surname:string email:string pass_active:boolean acc_active:boolean last_in:datetime password_digest:string
- Recruiters
	-- agency_id:integer
	-- name:string
	-- surname:string
	-- email:string
	-- pass_active:boolean
	-- acc_active:boolean
	-- last_in:datetime
	-- password_digest:string

$ rails generate scaffold Contractor name:string surname:string email:string pass_active:boolean acc_active:boolean last_in:datetime password_digest:string
- Contractors
	-- name:string
	-- surname:string
	-- email:string
	-- pass_active:boolean
	-- acc_active:boolean
	-- last_in:datetime
	-- password_digest:string

$ rails generate scaffold Contractee name:string email:string pass_active:boolean acc_active:boolean last_in:datetime password_digest:string
- Contractees
	-- name:string
	-- email:string
	-- pass_active:boolean
	-- acc_active:boolean
	-- last_in:datetime
	-- password_digest:string

$ rails generate scaffold Staff contractee_id:integer name:string surname:string email:string pass_active:boolean acc_active:boolean last_in:datetime password_digest:string
- Staffs
	-- contractee_id:integer
	-- name:string
	-- surname:string
	-- email:string
	-- pass_active:boolean
	-- acc_active:boolean
	-- last_in:datetime
	-- password_digest:string

$ rails generate scaffold Tcard contractor_id:integer contractee_id:integer recruiter_id:integer time_in:datetime time_out:datetime supervisor_id:integer supervisor_status:string manager_id:integer manager_status:string
- TimeCards
	-- contractor_id:integer
	-- contractee_id:integer
	-- recruiter_id:integer
	-- time_in:datetime
	-- time_out:datetime
	-- supervisor_id:integer
	-- supervisor_status:string
	-- manager_id:integer
	-- manager_status:string

	
$rails db:migrate
