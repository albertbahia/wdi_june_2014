require 'rails_helper'

describe Entry do
  it { is_expected.to validate_presence_of(:title) }
end
