# Keys that i want = [image_uris][border_crop], [mana_cost], [type_line], [oracle_text], [rarity], prices for later maybe

@cards = []
@selected_keys = []

def get_set_json(url)
  cards = []
  link = HTTP.get(url)
  parsed_link = JSON.parse(link)
  @cards << parsed_link["data"]
  if parsed_link["next_page"].nil?
    return
  end
  get_set_json(parsed_link["next_page"])
end

def get_filename(url)
  HTTP.get(url).headers["Content-Disposition"][/\"(.*?)\"/, 1]
end

get_set_json("https://api.scryfall.com/cards/search?order=set&q=e%3Athb&unique=prints")

(0..2).each do |i|
  j = 0
  @cards[i].each do
    @cards[i][j]["card_id"] = @cards[i][j].delete "id"
    @selected_keys << {"oracle_text" => @cards[i][j]["oracle_text"]} 
    j += 1
  end
end

i = 784
@selected_keys.each_with_index do |_i,index|
  i += 1
  @selected_keys[index].each_pair do |key,value|
    Product.where(id: i).update(key => value)
  end
end