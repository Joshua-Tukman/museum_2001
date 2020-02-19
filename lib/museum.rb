class Museum

  attr_reader :name, :exhibits, :patrons_in_attendance

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons_in_attendance = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def add_patron(patron)
    @patrons_in_attendance << patron    
  end

  def recommend_exhibits(patron)
    recommendations = []
    exhibit_names = @exhibits.map{|exhibit|exhibit.name}
    require "pry"; binding.pry
  end
end
