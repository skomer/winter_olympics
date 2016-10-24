require_relative '../db/sql_runner.rb'
# require_relative 'athlete.rb'

class Nation

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options.fetch('name')
  end

  def save()
    sql = "
      INSERT INTO nations (name)
      VALUES ('#{@name}')
      RETURNING *
    ;"
    nation = SqlRunner.run(sql).first
    @id = nation['id'].to_i
  end

  def self.find_athletes(id)
    sql = "
      SELECT * FROM athletes
      WHERE nation_id = #{id}
    ;"
    return Athlete.map_items(sql)
  end

  def self.find(id)
    sql = "
      SELECT * FROM nations
      WHERE id = #{id}
    ;"
    nation = SqlRunner.run(sql)
    return Nation.new(nation.first)
  end


  def self.all()
    sql = " SELECT * FROM nations; "
    return Nation.map_items(sql)
  end

  def self.map_items(sql)
    nations = SqlRunner.run(sql)
    return nations.map { |nation| Nation.new(nation) }
  end

end








