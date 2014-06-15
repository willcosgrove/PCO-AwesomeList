class AwesomeList

  def initialize(list)
    @data = list.sort_by { |person| [-person[:awesomeness], person[:name]] }
  end

  def most_awesome_person
    @data.first
  end

  def average_awesomeness
    @data.map { |person| person[:awesomeness] }.reduce(:+) / @data.length
  end

  def top_awesome_people(count=10)
    @data[0...count]
  end

end
