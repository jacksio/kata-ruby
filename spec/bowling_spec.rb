require 'spec_helper'

describe Bowling do
  it 'has a version number' do
    expect(Bowling::VERSION).not_to be nil
  end

  describe Bowling::Bowling do
  	subject {Bowling::Bowling.new}
  	it 'respond to roll' do
  		expect(subject).to respond_to(:roll)
  	end

  	it { is_expected.to respond_to(:score) }

  	it 'roll all 0' do
  		20.times{
  			subject.roll(0)
  		}
  		expect(subject.score).to eq 0
  	end

  	it 'roll call 1' do
  		20.times{
  			subject.roll(1)
  		}
  		expect(subject.score).to eq 20
  	end
  end
end
