

class Nation

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options.fetch('name')
  end

  def save()
    sql = "
      

    "
  end


end