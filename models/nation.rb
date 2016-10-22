

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






end