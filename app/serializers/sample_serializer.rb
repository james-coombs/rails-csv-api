class SampleSerializer < ActiveModel::Serializer
  attributes :id, :row, :sample_id, :sample_type, :matrix, :value, :units,
             :test_method, :test_manufacturer, :lab_location, :collection_type,
             :age, :gender, :volume, :collection_date, :test_date, :frozen_date,
             :box, :aliquots
end
