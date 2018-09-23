require 'person'

RSpec.describe Person do

  subject { described_class.new("Nic") }

  it "should return its name when asked" do
    expect(subject.name).to eq "Nic"
  end

  it "should know when a player has won" do
    subject.winner
    expect(subject.victory).to eq true
  end

end
