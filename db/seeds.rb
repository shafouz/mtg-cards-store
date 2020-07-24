file = File.open "selected_keys.json"
@selected_keys = JSON.load file
file.close

@selected_keys.each_with_index do |_i,index|
  Product.create(name: @selected_keys[index]["name"], set: @selected_keys[index]["set"], card_id: @selected_keys[index]["card_id"], image_uris: @selected_keys[index]["image_uris"], oracle_text: @selected_keys[index]["oracle_text"])
end