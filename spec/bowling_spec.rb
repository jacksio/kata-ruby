require 'spec_helper'

describe Bowling do
  it 'has a version number' do
    expect(Bowling::VERSION).not_to be nil
  end

  describe Bowling::Bowling do
  	subject {Bowling::Bowling.new}

  	def roll_many(times, pins)
  		times.times{
  			subject.roll(pins)
  		}
  	end

  	def roll_spare
  		subject.roll(5)
  		subject.roll(5)
  	end

  	it 'respond to roll' do
  		expect(subject).to respond_to(:roll)
  	end

  	it { is_expected.to respond_to(:score) }

  	it 'roll all 0' do
  		roll_many(20, 0)
  		expect(subject.score).to eq 0
  	end

  	it 'roll call 1' do
  		roll_many(20, 1)
  		expect(subject.score).to eq 20
  	end

  	it 'roll one spare' do
  		roll_spare
  		subject.roll(3)
  		roll_many(17, 0)
  		expect(subject.score).to eq 16
  	end
  end
end
