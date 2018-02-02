class HistoryController < ApplicationController
  def index
    @history_pair = Pair.one_week
  end
end
