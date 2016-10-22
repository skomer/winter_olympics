
class Event

  attr_reader :id, :title, :venue, :status

  def initialize(options)
    @id = options['id'].to_i
    @title = options.fetch('title')
    @venue = options.fetch('venue')
    @status = options.fetch('status')
  end


end