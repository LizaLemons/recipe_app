require 'rails_helper'

describe Collection do
  it { is_expected.to validate_presence_of :title}
  it { is_expected.to validate_presence_of :ingredients}
  it { is_expected.to validate_presence_of :directions}
end
