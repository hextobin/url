class Url < ApplicationRecord
  extend FriendlyId
  friendly_id :newurl, use: :slugged
end
