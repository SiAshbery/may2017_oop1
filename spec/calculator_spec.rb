require 'calculator'

RSpec.describe Calculator do
  it 'adds two numbers together' do
    expect(subject.add(2, 3)).to eq 5
    expect(subject.add(1, 2)).to eq 3
    expect(subject.add(0, 1)).to eq 1
    expect(subject.add(-1, 2)).to eq 1
    expect(subject.add(-1, -1)).to eq -2
    expect(subject.add(0, Float::INFINITY)).to eq Float::INFINITY
    expect(subject.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end

  it 'subtracts one number from another' do
    expect(subject.subtract(2, 1)).to eq 1
    expect(subject.subtract(3, 1)).to eq 2
    expect(subject.subtract(0, 0)).to eq 0
    expect(subject.subtract(0, 1)).to eq -1
    expect(subject.subtract(-1, -1)).to eq 0
    expect(subject.subtract(0, Float::INFINITY)).to eq -Float::INFINITY
  end
end
