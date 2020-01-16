require 'rails_helper'

RSpec.describe Apartment do
  context 'before any search' do
    it 'must display all apartments' do
      expect(get("/")).to route_to("apartments#index")
    end
  end
end
