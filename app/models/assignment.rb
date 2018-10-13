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

  # Delegation
  delegate :name, to: :discipline, prefix: true
end
