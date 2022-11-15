require 'item'

class Game
  attr_accessor :multiplayer, :last_played_date

  def initialize(publish_date, multiplayer, last_played_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_date)
  end

  def can_be_archived?
    check = Time.noe.year - @last_played_date.year > 2
    archived && check
  end
end
