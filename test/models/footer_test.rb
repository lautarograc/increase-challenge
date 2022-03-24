require "test_helper"

class FooterTest < ActiveSupport::TestCase
  RSpec.describe Footer, type: :model do
    subject { build(:footer) }
  
    describe 'factory' do
      it { is_expected.to be_valid }
    end
    describe 'database' do
      it { is_expected.to have_db_column(:footer_id).of_type(:integer).with_options(null: false) }
      it { is_expected.to have_db_column(:payment_date).of_type(:string).with_options(null: false) }
      it { is_expected.to have_db_column(:user_hash).of_type(:string).with_options(null: false) }
    end
    
    describe 'validations' do
    it { is_expected.to validate_presence_of(:payment_date) }
    it { is_expected.to validate_presence_of(:user_hash) }
    end
  end  
  
end
