require "pdf2image/version"
require 'rmagick'

module Pdf2image
  
  def self.welcome
    puts "You are using Pdf2image Gem!!"
  end
  
  def self.convert(path)
    filepath = File.dirname(path)
    extn = File.extname path
    filename = File.basename path, extn
    puts "Name" + filename

    pdf = Magick::ImageList.new(path)
    if pdf.format == "PDF"
      puts pdf.format.inspect
      pdf.write(filepath + "/" + filename + ".jpg")
#    elsif pdf.format == "JPEG"  
#        puts "hello"
#       pdf.write(filename + ".pdf")
    else
      raise StandardError, "Please enter valid PDF file path!"
    end
  end  
  
end
