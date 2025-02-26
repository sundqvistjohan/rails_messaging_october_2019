require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'DB table' do
        it { is_expected.to have_db_column :id }
        it { is_expected.to have_db_column :name }
        it { is_expected.to have_db_column :email }
    end

    describe 'Validations' do
        it { is_expected.to validate_presence_of :name }
        it { is_expected.to validate_presence_of :email }
    end

    describe 'Factory' do
        it 'should have valid Factory' do
            expect(FactoryBot.create(:user)).to be_valid
        end
    end
end