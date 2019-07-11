class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  # def highest_paid_actor
  #   all_characters = []
  #   @shows.each do |show|
  #     all_characters << show.characters
  #   end
  #   highest_paid_character = all_characters.flatten.max_by do |character|
  #     character.salary
  #   end
  #   highest_paid_character.actor
  # end

  #Another way to do highest paid highest_paid_actor
  def highest_paid_actor
    all_characters
      .max_by { |char| char.salary }
      .actor
  end


  # def payroll
  #   payroll = Hash.new
  #   @shows.each do |show|
  #     show.characters.each do |char|
  #       payroll[char.actor] = char.salary
  #     end
  #   end
  #   payroll
  # end

  def all_characters
    @shows.map { |show| show.characters }.flatten
  end

  # def payroll
  #   payroll_hash = Hash.new(0)
  #   all_characters.each do |char|
  #     payroll_hash[char.actor] = char.salary
  #   end
  #   payroll_hash
  # end

# NANCY'S CODE UTILIZING .ZIP 
  def payroll
    key_actors = @shows.map(&:characters)
    .flatten
    .map(&:actor)

    value_salary = @shows.map(&:characters)
    .flatten
    .map(&:salary)

    Hash[key_actors.zip(value_salary)]
  end
end
