class Post < ApplicationRecord
  include AASM
  extend Enumerize

  enumerize :state, in: [:draft, :requested, :published], default: :draft

  aasm column: :state do
    state :draft, initial: true
    state :requested
    state :published

    event :request do
      transitions from: :draft, to: :requested
    end

    event :publish do
      transitions from: :requested, to: :published
    end
  end
end
