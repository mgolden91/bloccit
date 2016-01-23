class Rating < ActiveRecord::Base
  has_many :topics, dependent: :destroy
  has_many :posts, dependent: :destroy

  before_save { self.severity ||= :PG }
  enum severity: [ :PG, :PG13, :R]
end
