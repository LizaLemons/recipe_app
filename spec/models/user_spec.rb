require 'rails_helper'

describe User do
  let(:hari) { User.new(username: "hari",
                        first_name: "Hari",
                        last_name: "Mohanran",
                        age: 89,
                        city: "San Francisco",
                        state_abr: "CA",
                        photo_url: "http://placekitten.com/g/200/300",
                        password: "hari",
                        password_confirmation: "hari")}

  it { is_expected.to validate_presence_of :username}
  it { is_expected.to validate_presence_of :password}
end
