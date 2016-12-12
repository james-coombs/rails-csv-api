# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

samples = Sample.create([
  { row: '1',
    sample_id: '4089dfef96bf6235c7c66d45a31ac8f103a97c8a',
    sample_type: 'T4 Free',
    matrix: 'Serum',
    value: '3',
    units: 'ng/mL',
    test_method: 'Spectrophotometry',
    test_manufacturer: 'DPC',
    lab_location: 'LabCorp',
    collection_type: 'Remnant',
    age: '91',
    gender: 'F',
    volume: '1',
    collection_date: '11/7/2015',
    test_date: '11/9/2015',
    frozen_date: '11/14/2015',
    box: '185.62.101.123',
    aliquots: '1.5' },

  { row: '2',
    sample_id: '4089dfef96bf6235c7c66d45a31ac8f103a97c8a',
    sample_type: 'ALT',
    matrix: 'Serum',
    value: '21.9',
    units: 'kIU/L',
    test_method: 'Other Immunoassay',
    test_manufacturer: 'Roche',
    lab_location: 'LabCorp',
    collection_type: 'Remnant',
    age: '55',
    gender: 'M',
    volume: '1.5',
    collection_date: '3/24/2016',
    test_date: '3/27/2016',
    frozen_date: '3/31/2016',
    box: '85.6.153.64',
    aliquots: '1.5' }
                        ])

#{'Row,Sample_ID,Sample_Type,Matrix,Value,Units,Test_Method,Test_Manufacturer,Lab_Location,Collection_Type,Age,Gender,Volume,collection_date,Test_Date,Frozen_Date,Box,Aliquots
