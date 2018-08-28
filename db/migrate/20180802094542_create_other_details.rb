class CreateOtherDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :other_details do |t|

      t.timestamps
    end
  end
end
