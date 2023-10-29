# frozen_string_literal: true

class Lesson < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Validations
  validates :name,        presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :video_url,   presence: true, allow_blank: false
end
