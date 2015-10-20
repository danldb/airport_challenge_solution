require 'airport'

describe Airport do

  let(:plane) {spy :plane}
  let(:weather){double :weather, stormy?: false}
  
  subject {described_class.new weather}

  describe '#land' do
    it 'can land a plane' do
      subject.land plane
      expect(plane).to have_received :land
    end

    it 'cannot land a plane in stormy weather' do
      allow(weather).to receive(:stormy?).and_return true
      expect{subject.land(:plane)}.to raise_error 'too stormy'
    end

  end


  it 'will raise an error if there is no plane to launch' do
    expect{subject.launch}.to raise_error 'no planes' 
  end

  it 'can launch a plane' do
    subject.land plane
    subject.launch
    expect(plane).to have_received :take_off
  end
  
  it 'will not launch a plane if stormy' do
    subject.land plane
    allow(weather).to receive(:stormy?).and_return true
    expect{subject.launch}.to raise_error 'too stormy'
  end
end
