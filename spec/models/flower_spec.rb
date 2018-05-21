require 'rails_helper'

RSpec.describe Flower, type: :model do
  it { should have_many(:customers)}
  it { should have_many(:customers).through(:orders)}
end
