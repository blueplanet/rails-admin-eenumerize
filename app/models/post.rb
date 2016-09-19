class Post < ApplicationRecord
  extend Enumerize

  enumerize :state, in: [:draft, :requested, :published]
end
