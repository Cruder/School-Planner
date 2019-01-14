# frozen_string_literal: true

# == Schema Information
#
# Table name: assignments
#
#  id            :integer          not null, primary key
#  discipline_id :integer
#  title         :string
#  description   :text
#  due_to        :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Assignment < ApplicationRecord
  # Relations
  belongs_to :discipline

  # Delegations
  delegate :name, to: :discipline, prefix: true

  # Scopes
  scope :up_to_date, -> { where(arel_table[:due_to].gteq(Date.today)) }

  def self.by_day
    sql_date = Arel.sql('DATE_TRUNC(\'day\', "assignments"."due_to") AS date')
    select(arel_table[Arel.star], sql_date).group_by(&:date)
  end
end
