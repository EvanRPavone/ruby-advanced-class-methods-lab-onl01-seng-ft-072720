class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create #class constructor
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(title) #class constructor
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title) #class constructor
    song = self.create
    song.name = title
    song
  end

  def self.find_by_name(title) #class finder
    result = self.all.detect {|song| song.name == title}
    result
  end
  def self.find_or_create_by_name(title)
    result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
  end
  
end
