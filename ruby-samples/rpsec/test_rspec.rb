require 'rspec-expectations'
describe 'Normal Expectations' do
  before do
    @hash = { :hello => 'world' }
  end

  it "should pass for should" do
    Hash.new.should == {}
    1.should == 1
    true.should be_true
    false.should_not be_true
  end

  it "should pass for should" do
    Hash.new.should == {}
    1.should == 1
    true.should be_true
    false.should_not be_true
  end

  it {  @hash[:hello].should == 'world' }

end

describe 'Advanced Usages' do
  let(:array) { [1,2,3] }
  let(:hash) { {:a => 1, :b => 2} }
  subject { hash }

  it "should have len 3" do
    array.length.should == 3
  end

  specify { hash.has_key?(:a).should be_true }
  specify { subject.has_key?(:c).should be_false }

  it { should have_key(:a) }
  it { should_not have_key(:c) }

end