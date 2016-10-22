
class AthleteEvent

  attr_reader :id, :status, :position, :athlete_id, :event_id, :medal_id

  def initialize(options)
    @id = options['id'].to_i
    @status = options.fetch('status')
    @position = options.fetch('position')
    @athlete_id = options.fetch('athlete_id').to_i
    @event_id = options.fetch('event_id').to_i
    @medal_id = options.fetch('medal_id').to_i
  end


end