require 'rails_helper'

RSpec.describe Order, type: :model do
    it { should belong_to(:flower)}
    it { should belong_to(:customer)}
    it { should validate_presence_of(:quantity)}
    it { should validate_presence_of(:customer_id)}
    it { should validate_presence_of(:flower_id)}
end
