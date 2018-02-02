class Assetpair < ApplicationRecord

  def add_pair
    @assetpairs = JSON.load(open("https://api.kraken.com/0/public/AssetPairs"))
    @assetpairs["result"].each do |item_name|
      unless item_name[0].include? '.d'
        assetpair = Assetpair.new
        assetpair.name = item_name[0]
        assetpair.save
      end
    end
  end
end
