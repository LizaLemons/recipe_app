require 'rails_helper'

describe Collection do
  it { is_expected.to validate_presence_of :name}
  it { is_expected.to validate_presence_of :user_id}
end
