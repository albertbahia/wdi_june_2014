require 'rails_helper'

describe Entry do
  it { is_expected.to validate_presence_of :title}
  it { is_expected.to validate_presence_of :content}
  it { is_expected.to validate_presence_of :user}
  it { is_expected.to belong_to :user}
end
