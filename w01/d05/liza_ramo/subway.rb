class Subway

  attr_reader( :name, :lines)

  def initialize(name, lines)
    @name = name
    @lines = lines
  end

  def subway_name
    return "The #{name} Subway System"
  end

  def list_lines
    line_info = lines.map { |line| line.list_info }
    line_info.join("\n")
  end

  def calculate_transfer(first_leg, second_leg)

    first_leg =
      line.map { |line| line.calculate_trip } -
      { |station| station.name ("Union Square").abs}

        #search through attr_reader :name til finds ("Un Sq").abs

    second_leg =
      line.map { |line| line.calculate_trip } -
      { |station| station.name {("Union Square").abs}

    return (first_leg + second_leg).abs
  end
