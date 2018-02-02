class Pair < ApplicationRecord
  scope :one_week, -> { where(:created_at => 1.week.ago.beginning_of_day..Time.now.end_of_day) }
  scope :current_pair, -> { where(pair_name: @pair).last }
end
