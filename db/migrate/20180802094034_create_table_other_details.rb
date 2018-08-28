class CreateTableOtherDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :table_other_details do |t|
      t.integer :person_id
      t.string  :blood_group
      t.string  :country
    end
  end
end
