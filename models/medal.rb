require_relative '../db/sql_runner.rb'

class Medal

  attr_reader :id, :type

  def initialize(options)
    @id = options['id'].to_i
    @type = options.fetch('type')
  end

end