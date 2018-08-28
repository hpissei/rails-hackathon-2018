class AlterTableOtherDetailsAddColumnPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :other_details,:person_id,:integer
  end
end
