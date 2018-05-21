require 'rails_helper'

RSpec.describe Customer, type: :model do
    it { should have_many(:orders)}
    it { should have_many(:flowers).through(:orders)}
end
