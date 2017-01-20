

class Parser
  def parse(content, option)
    if option == :xml
      XMLParser.new(content).parse
    elsif option == :csv
      CSVParser.new(content, {col_sep: ";"}).parse
    else
      nil
    end
  end
end

class Parser
  def parse(parser)
    parser.parse
  end
end

Parser.parse(CSVParser.new(content, {col_sep: ";"}))
Parser.parse(XMLParser.new(content))
