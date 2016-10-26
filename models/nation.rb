require_relative '../db/sql_runner.rb'
require 'pry-byebug'

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

  def self.athletes(nation_id)
    sql = "
      SELECT * FROM athletes
      WHERE nation_id = #{nation_id}
    ;"
    return Athlete.map_items(sql)
  end

  def self.nation(nation_id)
    sql = "
      SELECT * FROM nations
      WHERE id = #{nation_id}
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

  def self.medals(nation_id)
    sql = "
      SELECT * FROM medals m
      INNER JOIN athletes_events ae ON m.id = ae.medal_id
      INNER JOIN athletes a ON ae.athlete_id = a.id
      INNER JOIN nations n ON a.nation_id = n.id
      WHERE n.id = #{nation_id}
      ;"
    return Nation.map_items(sql)
  end

  def self.map_items(sql)
    items = SqlRunner.run(sql)
    return items.map { |item| item["first_name"] + " " + item["type"] }
  end


end








