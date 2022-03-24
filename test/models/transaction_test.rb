require "test_helper"

  class TransactionTest < ActiveSupport::TestCase
    RSpec.describe Transaction, type: :model do
      subject { build(:transaction) }
    
      describe 'factory' do
        it { is_expected.to be_valid }
      end
  
      describe 'database' do
        it { is_expected.to have_db_column(:amount).of_type(:decimal).with_options(null: false) }
        it { is_expected.to have_db_column(:transaction_type).of_type(:integer).with_options(null: false) }
        it { is_expected.to have_db_column(:transaction_id).of_type(:integer).with_options(null: false) }  
      end
      
      describe 'validations' do
      it { is_expected.to validate_presence_of(:amount) }
      it { is_expected.to validate_presence_of(:transaction_type) }
      it { is_expected.to validate_length_of(:transaction_type).is_at_least(1).is_at_most(4) }
      end
    end  
    
  end