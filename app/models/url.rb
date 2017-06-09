class Url < ApplicationRecord
  paginates_per 10
  belongs_to :user, optional: true
end
