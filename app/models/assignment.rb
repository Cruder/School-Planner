# frozen_string_literal: true

class Assignment < ApplicationRecord
  # Relations
  belongs_to :discipline

  # Delegation
  delegate :name, to: :discipline, prefix: true
end
