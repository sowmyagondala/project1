class CreateResidences < ActiveRecord::Migration
  def change
    create_table :residences do |t|
      t.string :country_name
      t.integer :code

      t.timestamps
    end
  end
end
