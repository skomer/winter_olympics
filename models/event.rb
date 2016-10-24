
class Event

  attr_reader :id, :title, :venue, :status

  def initialize(options)
    @id = options['id'].to_i
    @title = options.fetch('title')
    @venue = options.fetch('venue')
    @status = options.fetch('status')
  end

  def save()
    sql = "
      INSERT INTO events (
        title,
        venue,
        status
      )
      VALUES (
        '#{@title}',
        '#{@venue}',
        '#{@status}'
      )
      RETURNING *
    ;"
    event = SqlRunner.run(sql).first
    @id = event['id']
  end

  def self.all()
    sql = "
      SELECT * FROM events
    ;"
    return Event.map_items(sql)
  end

  def self.map_items(sql)
    events = SqlRunner.run(sql)
    return events.map { |event| Event.new(event) }
  end

  def self.find(id)
    sql = "
      SELECT * FROM events
      WHERE id = #{id}
    "
    event = SqlRunner.run(sql)
    return Event.new(event.first)
  end



end