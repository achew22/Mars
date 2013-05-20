class Parser

  def self.generate(text)
    text.split("").select{ |t| t != " "}
  end
end