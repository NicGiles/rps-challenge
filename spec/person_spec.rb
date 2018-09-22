require 'person'

RSpec.describe Person do

  subject { described_class.new("Nic") }

  it "should return its name when asked" do
    expect(subject.name).to eq "Nic"
  end

end
