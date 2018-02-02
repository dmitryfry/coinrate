require 'open-uri'

class PagesController < ApplicationController

  def show
    @pair = request.fullpath.delete '/'
    @pair_for_page = Pair.current_pair
    if @pair_for_page.nil? || @pair_for_page.created_at.to_date < Date.today
      @last_deal = JSON.load(open("https://api.kraken.com/0/public/Ticker?pair=#{@pair}"))
      @pair_info = JSON.load(open("https://api.kraken.com/0/public/AssetPairs?pair=#{@pair}"))

      pair = Pair.new

      @pair_info['result'][@pair].each do |value_name, value|
        pair[value_name] = value
      end

      pair.pair_name = @pair
      pair.rate = @last_deal['result'][@pair.to_s]['c']
      pair.save
      @pair_for_page = Pair.current_pair
    end
  end
end
