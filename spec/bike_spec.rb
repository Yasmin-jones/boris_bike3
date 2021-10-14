require "bike.rb"

describe Bike do
  bike_instance = Bike.new

  it 'checks that bike instance responds to working method' do
    expect(bike_instance.respond_to?(:working?)).to eq(true)
  end 

  it 'can be reported broken' do
    subject.report_broken
    # let's use one of RSpec's predicate matchers
    expect(subject).to be_broken
  end

end
