require 'rails_helper'

describe Collection do
  let(:dinner) { Collection.new(name: "Dinner",
                                user_id: 1)}

  it { is_expected.to validate_presence_of :name}
end
