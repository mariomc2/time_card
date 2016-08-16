class CreateTcards < ActiveRecord::Migration[5.0]
  def change
    create_table :tcards do |t|
      t.integer :contractor_id
      t.integer :contractee_id
      t.integer :recruiter_id
      t.datetime :time_in
      t.datetime :time_out
      t.integer :supervisor_id
      t.string :supervisor_status
      t.integer :manager_id
      t.string :manager_status

      t.timestamps
    end
  end
end
