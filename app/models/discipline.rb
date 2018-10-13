# frozen_string_literal: true

class Discipline < ApplicationRecord
  # Relations
  has_many :assignments
end
