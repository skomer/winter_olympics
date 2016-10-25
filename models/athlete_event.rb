require_relative '../db/sql_runner.rb'
require 'pry-byebug'

class AthleteEvent

  attr_reader :id, :position, :athlete_id, :event_id, :medal_id

  def initialize(options)
    @id = options['id'].to_i
    @position = options['position'] || 0
    @athlete_id = options.fetch('athlete_id').to_i
    @event_id = options.fetch('event_id').to_i
    @medal_id = options['medal_id'].to_i
  end

  def save()
    sql = "
      INSERT INTO athletes_events (
        position,
        athlete_id,
        event_id,
        medal_id
        )
      VALUES (
        #{@position},
        #{@athlete_id},
        #{@event_id},
        #{@medal_id}
      )
      RETURNING *
    ;"
    athlete_event = SqlRunner.run(sql).first
    @id = athlete_event['id'].to_i
  end

  def self.find_athletes(athlete_id)
    sql = "
      SELECT * FROM athletes
      WHERE id = #{athlete_id}
    ;"
    return Athlete.map_items(sql)
  end

  def self.find_events(event_id)
    sql = "
      SELECT * FROM events
      WHERE id = #{event_id}
    ;"
    return Event.map_items(sql)
  end


end







