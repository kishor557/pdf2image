require "pdf2image/version"
require 'rmagick'

# converts pdf to jpeg
module Pdf2image
  
  
  def self.welcome
    puts "You are using Pdf2image Gem!!"
  end
  
  def self.convert(path)
    filepath = File.dirname(path)
    extn = File.extname path
    filename = File.basename path, extn

    pdf = Magick::ImageList.new(path)
    if pdf.format == "PDF"
      pdf.write(filepath + "/" + filename + ".jpg")
      STDOUT.put "\033[107;31m Your file saved in #{filepath}\033[0m"
    else
      raise StandardError, "Please enter valid PDF file path!"
    end
  end  
  
end
