require "test_helper"

class SummaryTest < ActiveSupport::TestCase
  RSpec.describe Discount, type: :model do
    subject { build(:discount) }
  
    describe 'factory' do
      it { is_expected.to be_valid }
    end
    describe 'associations' do
      it { is_expected.to belong_to(:payment) }
    end
    describe 'database' do
      it { is_expected.to have_db_column(:amount).of_type(:decimal).with_options(null: false) }
      it { is_expected.to have_db_column(:payment_hash).of_type(:string).with_options(null: false) }
      it { is_expected.to have_db_column(:discount_id).of_type(:integer).with_options(null: false) }
      it { is_expected.to have_db_column(:discount_type).of_type(:integer).with_options(null: false) }

    end
    
    describe 'validations' do
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:discount_type) }
    it {is_expected.to validate_length_of(:discount_type).is_at_least(1).is_at_most(4)}
    it { is_expected.to validate_presence_of(:payment_hash) }
    end
  end  
  
end
