# frozen_string_literal: true

# Item_class_implementation

class Item
  attr_accessor :id, :publish_date
  attr_reader :archive

  def initialize(_id, publish_date, _archive)
    @id = random.rand(1..1000)
    @publish_date = publish_date
    @archive = false
  end

  def move_to_archive
    @archive = true if can_be_archived?
  end

  private

  def can_be_archived?
    current = Time.now.year - publish_date.year.to_i
    true if current > 10
  end
end
