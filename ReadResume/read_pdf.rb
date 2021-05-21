require 'pdf-reader'
require 'docx'
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
          puts page.text
        end
      end
    end
  end

  def read_text_from_word
    accepted_formats = [".docx",".doc"]
    Dir.foreach(@resume_directory) do |file|
      if accepted_formats.include?File.extname(file)
        doc =  Docx::Document.open(file)
        puts doc
      end
    end
  end  
end
pdf_resume = ReadResume.new("D:/Ruby-StringsAndArrays/ReadResume")
word_resume = ReadResume.new("D:/Ruby-StringsAndArrays/ReadResume")
word_resume.read_text_from_word
pdf_resume.read_text_from_pdf