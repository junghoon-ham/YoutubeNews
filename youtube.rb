query = { "part" => "snippet", "channelId" => "UCwx6n_4OcLgzAGdty0RWCoA", "key" => "AIzaSyCsbdLEGJ9wjNkH5ctSkUUFHF1nKZQLp5c" }
@youtubeConnect = HTTParty.get("https://www.googleapis.com/youtube/v3/search", :query => query)
@youtubeDataJson = @youtubeConnect.to_json
@jsonParse = JSON.parse(@youtubeDataJson)

@CardPayDay = @cardToParse["dataBody"]["grp001"][0]["setlTypeNo"].last(2)
@cardPayMoney = @cardToParse["dataBody"]["grp001"][0]["billAmt"].to_i

if current_user.card_pay_day != @CardPayDay
  current_user.update(card_pay_day: @CardPayDay)
end

if current_user.card_pay_money != @cardPayMoney
  current_user.update(card_pay_money: @cardPayMoney)
end