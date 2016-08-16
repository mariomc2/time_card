class CreateContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.boolean :pass_active
      t.boolean :acc_active
      t.datetime :last_in
      t.string :password_digest

      t.timestamps
    end
  end
end
