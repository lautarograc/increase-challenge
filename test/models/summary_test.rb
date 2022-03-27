require "test_helper"

class SummaryTest < ActiveSupport::TestCase
  RSpec.describe Summary, type: :model do
    subject { build(:summary) }
    
    describe 'factory' do
      it { is_expected.to be_valid }
    end
    describe 'associations' do
      it { is_expected.to belong_to(:payment) }
    end
    describe 'database' do
      it { is_expected.to have_db_column(:amount).of_type(:decimal).with_options(null: false) }
      it { is_expected.to have_db_column(:currency).of_type(:integer).with_options(null: false) }
      it { is_expected.to have_db_column(:discount).of_type(:decimal).with_options(null: false) }
      it { is_expected.to have_db_column(:payment_hash).of_type(:string).with_options(null: false) }
      it { is_expected.to have_db_column(:summary_id).of_type(:integer).with_options(null: false) }
      it { is_expected.to have_db_column(:total_amount).of_type(:decimal).with_options(null: false) }

    end
    
    describe 'validations' do
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:currency) }
    it { is_expected.to validate_presence_of(:discount) }
    it { is_expected.to validate_presence_of(:payment_hash) }
    it { is_expected.to validate_presence_of(:total_amount) }
    end
  end  
  
end
