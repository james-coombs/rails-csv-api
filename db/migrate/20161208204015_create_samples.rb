class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :row
      t.string :sample_id
      t.string :sample_type
      t.string :matrix
      t.string :value
      t.string :units
      t.string :test_method
      t.string :test_manufacturer
      t.string :lab_location
      t.string :collection_type
      t.string :age
      t.string :gender
      t.string :volume
      t.string :collection_date
      t.string :test_date
      t.string :frozen_date
      t.string :box
      t.string :aliquots

      t.timestamps
    end
  end
end
