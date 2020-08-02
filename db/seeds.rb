# "name", "set", "card_id", "image_uris", "oracle_text"

def get_set_recursively(url)
  url["data"].each_with_index do |i, index|
    i["name"], i["image_uris"]["border_crop"], i["set"], i["oracle_text"], i["card_id"] = index
  end
end