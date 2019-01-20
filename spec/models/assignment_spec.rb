# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Assignment, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to(:discipline) }
  end

  describe 'scopes' do
    describe 'up_to_date' do
      subject { Assignment.up_to_date }

      context 'with an old, a today and a future scheduled assignments' do
        let!(:old_assignment) { create :assignment, due_to: Date.yesterday }
        let!(:today_assignment) { create :assignment, due_to: Date.today }
        let!(:future_assignment) { create :assignment, due_to: Date.tomorrow }

        it { is_expected.to eq [today_assignment, future_assignment] }
      end
    end
  end

  describe 'class methods' do
    describe 'by_day' do
      subject { Assignment.by_day }

      let!(:old_assignment) { create :assignment, due_to: Date.yesterday }
      let!(:today_assignment) { create :assignment, due_to: Date.today }
      let!(:future_assignment_1) { create :assignment, due_to: Date.tomorrow }
      let!(:future_assignment_2) { create :assignment, due_to: Date.tomorrow }

      it 'returns assignments grouped by day' do
        is_expected.to eq(
          Date.yesterday.in_time_zone.to_time => [old_assignment],
          Date.today.in_time_zone.to_time => [today_assignment],
          Date.tomorrow.in_time_zone.to_time => [future_assignment_1, future_assignment_2]
        )
      end
    end
  end
end
