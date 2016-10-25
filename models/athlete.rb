require 'pry-byebug'

class Athlete

  attr_reader :id, :first_name, :last_name, :name_convention, :nation_id, :full_name

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options.fetch('first_name')
    @last_name = options.fetch('last_name')
    @name_convention = options.fetch('name_convention')
    @nation_id = options['nation_id']
  end

  def save()
    sql = "
      INSERT INTO athletes (
        first_name,
        last_name,
        name_convention,
        nation_id
      )
      VAlUES (
        '#{@first_name}',
        '#{@last_name}',
        '#{@name_convention}',
        #{@nation_id}
        )
      RETURNING *
    ;"
    athlete = SqlRunner.run(sql).first
    @id = athlete['id']
  end

  def full_name()
    if @name_convention == "last first"
      @full_name = @last_name + " " + @first_name
    else
      @full_name = @first_name + " " + @last_name
    end
    return @full_name
  end

  def self.full_names(athletes)
    athletes_full_names = []
    athletes.each do |athlete|
      if athlete.name_convention == "last first"
        full_name = athlete.last_name + " " + athlete.first_name
        athletes_full_names.push(full_name)
      else
        full_name = athlete.first_name + " " + athlete.last_name
      end
      athletes_full_names.push(full_name)
    end
    return athletes_full_names
  end

  def self.find(id)
    sql = "
      SELECT * FROM athletes
      WHERE id = #{id}
    ;"
    athlete = SqlRunner.run(sql)
    return Athlete.new(athlete.first)
  end

  def self.all()
    sql = "
      SELECT * FROM athletes
    ;"
    return Athlete.map_items(sql)
  end

  def self.map_items(sql)
    athletes = SqlRunner.run(sql)
    return athletes.map { |athlete| Athlete.new(athlete) }
  end

end