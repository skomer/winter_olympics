

class Medal

  attr_reader :id, :type

  def initialize(options)
    @id = options['id']
    @type = options.fetch('type')
  end

end