class CreatePerson2s < ActiveRecord::Migration[5.0]
  def change
    create_table :person2s do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :age

      t.timestamps
    end
  end
end
