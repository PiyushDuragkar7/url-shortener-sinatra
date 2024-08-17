require 'sequel'

# Connect to an SQLite3 database
DB = Sequel.sqlite('urls.db')

# Create the URLs table if it doesn't exist
DB.create_table? :urls do
  primary_key :id
  String :original_url, text: true
  String :shortened_url, unique: true
end