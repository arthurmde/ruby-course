
class Document
  def generate
    # ...
  end
end

require "your_xml_lib"
document = Document.new
# do something with document
puts document.generate

require "their_pdf_lib"
document = Document.new
# do something with document
puts document.generate

module XML
  class Document
    # ...
  end
end

module PDF
  class Document
    # ...
  end
end

require "your_xml_lib"
require "their_pdf_lib"

pdf_document = PDF::Document.new
xml_document = XML::Document.new


module XML
  OUTPUT = 'file.xml'
end

module PDF
  OUTPUT = 'file.pdf'
end

require "your_xml_lib"
require "their_pdf_lib"

puts "The filename from PDF document is #{PDF::OUTPUT}"
puts "The filename from XML document is #{XML::OUTPUT}"
