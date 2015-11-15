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
  end
end
