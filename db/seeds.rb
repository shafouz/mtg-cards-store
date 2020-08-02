# "name", "set", "card_id", "image_uris", "oracle_text"

sets = JSON.parse(File.read("db/sets.json"));

sets.each do |set|
  Product.create(name: set["name"], set: set["set"], oracle_text: set["oracle_text"], card_id: set["card_id"], image_uris: set["image_uris"]) if set["set"] != "eld"
  Product.update!(card_id: set["card_id"], oracle_text: set["oracle_text"]) if set["set"] == "eld"
end
