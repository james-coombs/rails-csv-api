# class Sample < ApplicationRecord
# end
class Sample < ActiveRecord::Base
  alias_attribute :Row, :row
  alias_attribute :'Sample ID', :sample_id
  alias_attribute :'Sample Type', :sample_type
  alias_attribute :Matrix, :matrix
  alias_attribute :Value, :value
  alias_attribute :Units, :units
  alias_attribute :'Test Method', :test_method
  alias_attribute :'Test Manufacturer', :test_manufacturer
  alias_attribute :'Lab Location', :lab_location
  alias_attribute :'Collection Type', :collection_type
  alias_attribute :Age, :age
  alias_attribute :Gender, :gender
  alias_attribute :Volume, :volume
  alias_attribute :new_column_name, :collection_date
  alias_attribute :'Test Date', :test_date
  alias_attribute :'Frozen Date', :frozen_date
  alias_attribute :Box, :box
  alias_attribute :Aliquots, :aliquots

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |sample|
        csv << sample.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Sample.create! row.to_hash
    end
  end
end
