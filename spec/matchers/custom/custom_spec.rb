RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
  description do
    "be a multiple of #{expected}"
  end
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end
end
  # expected == 3
  # actual == subject == 18

describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) }
end
