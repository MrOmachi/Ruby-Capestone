class Item
 
 attr_accessor :id, :publish_date
 attr_reader :archive

 def initialize(id, publish_date, archive)
  @id = random.rand(1..1000)
  @publish_date = publish_date
  @archive = false
 end

end