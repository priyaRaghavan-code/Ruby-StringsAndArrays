require 'pdf-reader'
require 'json'
require 'pg'

class ReadResume
  attr_accessor :resume_directory
  def initialize(resume_directory)
    @resume_directory = resume_directory
  end

  def read_text_from_pdf
    accepted_formats = [".pdf"] 
    Dir.foreach(@resume_directory) do |file|
      if accepted_formats.include?File.extname(file)
        reader = PDF::Reader.new(file)
        reader.pages.each do |page|
         dictionary_file = {:file_name =>file,:ocr_text=>page.text}
	       File.write("#{file}.json",JSON.dump(dictionary_file))
         #File.open("#{file}.json","w") { |files| files.write(dictionary_file.to_json) }
         p "completed Writing"
        end
      end
    end
  end
  def connect_with_db
    begin
      con = PG::Connection.new(:dbname => 'resume_db', :user => 'postgres', :password => 'test', :port => '8082', :host =>'localhost')
      p "DB Connected"
      con.exec "select * from resume_table"
      accepted_formats = [".json"]
      Dir.foreach(@resume_directory) do |file|
        if accepted_formats.include?File.extname(file)
	  p file
          file_data = File.read(file)
          file_data_in_json = JSON.parse(file_data)
	  file_name =  file_data_in_json['file_name']
	  file_data = file_data_in_json['ocr_text']
         # con.exec "INSERT INTO resume_table(file_name,resume_text) values (#{file_data_in_json['file_name']}, #{file_data_in_json['ocr_text']});"
	  con.exec "INSERT INTO resume_table(file_name,resume_text) values ('#{file_name}','#{file_data}');"
          p "Inserted Successfully "+file
        end
      end
    rescue  PG::Error => e
      p e.message
    ensure
      con.close if con
    end
  end

end
pdf_resume = ReadResume.new("/home/ubuntu/Ruby-StringsAndArrays/ReadResume")
connect_db = ReadResume.new("/home/ubuntu/Ruby-StringsAndArrays/ReadResume")
pdf_resume.read_text_from_pdf
connect_db.connect_with_db
