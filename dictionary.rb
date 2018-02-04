class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if entry.class == String
      @entries[entry] = nil
    elsif entry.class == Hash
      @entries.merge!(entry)
    end
  end

  def include?(string)
    @entries.keys.include?(string)
  end

  def keywords
    @entries.keys.sort
  end

  def find(entry)
    @entries.select { |key, value| key.include? entry }
  end

end
