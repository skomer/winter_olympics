
class Athlete

  attr_reader :id, :first_name, :last_name, :name_convention, :nation_id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options.fetch('first_name')
    @last_name = options.fetch('last_name')
    @name_convention = options.fetch('name_convention')
    @nation_id = options['nation_id'].to_i
  end

end