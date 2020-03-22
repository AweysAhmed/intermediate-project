# frozen_string_literal: true

# shout model
class Shout < ApplicationRecord
  belongs_to :user

  validates :body, presence: true, length: { in: 1..144 }
  validates :user, presence: true
end

# find out why sign up isn't working