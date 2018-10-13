# frozen_string_literal: true

# == Schema Information
#
# Table name: disciplines
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Discipline < ApplicationRecord
  # Relations
  has_many :assignments
end
