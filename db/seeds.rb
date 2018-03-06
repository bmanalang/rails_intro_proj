

csv_foodfile = Rails.root + 'db/Food.csv'

options = { file_encoding: 'iso-8859-1',
            key_mapping: { fooddescription: :food_name } }

food_names = SmarterCSV.process(csv_foodfile, options)


