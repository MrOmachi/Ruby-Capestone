# test book
require './class/book'

describe Book do
  before :each do
    @book = Book.new('Elsiever', 'Good', '12-01-2016')
  end

  it 'Return a book' do
    expect(@book).to be_a_instance_of Book
  end

  it 'Book has a publisher' do
    expect(@book.publisher).to eq 'Elsiever'
  end

  it 'Book should have a cover state' do
    expect(@book.cover_state).to eq 'Good'
  end

  it 'Book should have a publish date' do
    expect(@book.publish_date.strftime('%d-%m-%Y')).to eq('12-01-2016')
  end

  it 'Book should not be archived' do
    expect(@book.archived).to eq false
  end

  it 'Book should have an id' do
    expect(@book.id).to be_a_kind_of Integer
  end
end