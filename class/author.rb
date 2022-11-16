require_relative './item'

class Author < Item
  def initialize(first_name, last_name)
    super()
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(game)
    @item.push(game)
    game.author = self
  end
end
