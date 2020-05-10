# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

=begin
(0..2).each do |i|
  j = 0
  @cards[i].each do
    @cards[i][j]["card_id"] = @cards[i][j].delete "id"
    @selected_keys << {"name" => @cards[i][j]["name"], "set" => @cards[i][j]["set"], "card_id" => @cards[i][j]["card_id"], "image_uris" => "eld/" + get_filename(@cards[i][j]["image_uris"]["border_crop"])} 
    j += 1
  end
end

i = 784
j = 0
@selected_keys.each_with_index do |_i,index|
  i += 1
  @selected_keys[index].each_pair do |key,value|
    j += 1
    if j == 1
      Product.create(key => value)
    else
      Product.where(id: i).update(key => value)
    end
  end
  j = 0
end
=end