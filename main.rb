require 'csv'
require 'json'
require 'nokogiri'

# Method for processing data in CSV format
def process_csv(file_path)
  puts "Processing CSV file: #{file_path}"
  CSV.foreach(file_path, headers: true) do |row|
    # Your data processing code
    puts "CSV Row: #{row}"
  end
end

# Method for processing data in JSON format
def process_json(file_path)
  puts "Processing JSON file: #{file_path}"
  json_data = JSON.parse(File.read(file_path))
  # Your data processing code
  puts "JSON Data: #{json_data}"
end

# Method for processing data in XML format
def process_xml(file_path)
  puts "Processing XML file: #{file_path}"
  xml_data = Nokogiri::XML(File.read(file_path))
  # Your data processing code
  puts "XML Data: #{xml_data}"
end

# Example of using methods
csv_file_path = 'path/to/your/file.csv'
json_file_path = 'path/to/your/file.json'
xml_file_path = 'path/to/your/file.xml'

process_csv(csv_file_path)
process_json(json_file_path)
process_xml(xml_file_path)
