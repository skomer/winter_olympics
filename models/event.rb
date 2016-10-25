require 'pry-byebug'

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

  def self.find(event_id)
    sql = "
      SELECT * FROM events
      WHERE id = #{event_id}
    "
    event = SqlRunner.run(sql)
    return Event.new(event.first)
  end

  def self.find_athletes(id)
    event_id = id.to_i
    sql = "
      SELECT * FROM athletes
      INNER JOIN athletes_events
      ON athletes.id = athletes_events.athlete_id
      WHERE athletes_events.event_id = #{event_id}
    ;"
    return Athlete.map_items(sql)
  end


end






