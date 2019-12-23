class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.string :dateSubmitted
      t.string :answers

      t.timestamps
    end
  end
end
