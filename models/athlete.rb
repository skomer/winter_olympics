
class Athlete

  attr_reader :id, :first_name, :last_name, :name_convention, :nation_id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options.fetch('first_name')
    @last_name = options.fetch('last_name')
    @name_convention = options.fetch('name_convention')
    @nation_id = options['nation_id'].to_i
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
        '#{name_convention}',
        #{@nation_id}
        )
      RETURNING *
    ;"
    athlete = SqlRunner.run(sql).first
    @id = athlete['id'].to_i
  end

  def find(id)
    sql = "
      SELECT * FROM athletes
      WHERE id = #{id}
    ;"
    return map_items(sql)
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