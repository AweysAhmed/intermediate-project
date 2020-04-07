# frozen_string_literal: true

# shout model
class Shout < ApplicationRecord
  belongs_to :user
  belongs_to :content, polymorphic: true

  validates :user, presence: true

  default_scope { order(created_at: :desc) }

  delegate :username, to: :user
end
