# class Sample < ApplicationRecord
# end
class Sample < ActiveRecord::Base

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
