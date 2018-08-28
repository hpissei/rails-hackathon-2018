class AlterTableOtherDetailsAddColumnCountry < ActiveRecord::Migration[5.0]
  def change
    add_column :other_details,:country,:string
  end
end
