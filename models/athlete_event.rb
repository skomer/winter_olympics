require_relative '../db/sql_runner.rb'
require 'pry-byebug'

class AthleteEvent

  attr_reader :id, :status, :position, :athlete_id, :event_id, :medal_id

  def initialize(options)
    @id = options['id'].to_i
    @status = options['status'] || 'Not occurred'
    @position = options['position'] || 0
    @athlete_id = options.fetch('athlete_id').to_i
    @event_id = options.fetch('event_id').to_i
    @medal_id = options['medal_id'].to_i
  end

  def save()
    sql = "
      INSERT INTO athletes_events (
        status,
        position,
        athlete_id,
        event_id,
        medal_id
        )
      VALUES (
        '#{@status}',
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



end