require 'rspec'
require_relative '../lib/rectangle'


describe Rectangle do

let(:valid_rectangle) { Rectangle.new('5', '1 2 3 4 5') } 

  it 'gets initialized with 2 args' do 
    expect(valid_rectangle).to be_a Rectangle
  end

  it 'fails initializing when missing args' do 
    expect{Rectangle.new()}.to raise_error(ArgumentError)
  end

  it 'returns a num_elems attribute as an integer of 5' do 
    num_elems = valid_rectangle.num_elems

    expect(num_elems).to be_a Integer
    expect(num_elems).to eq(5)
  end

  it 'returns a heights attribute as an array of integers' do 
    heights = valid_rectangle.heights

    expect(heights).to be_a Array 
    expect(heights).to eq([1, 2, 3, 4, 5])
  end

end
