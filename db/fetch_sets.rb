require "http"
require "fileutils"

@json = []

def get_set_recursively(url)
  #make request
  request_body = JSON.parse(HTTP.get(url).body)

  #create file if array is empty
  #FileUtils.touch("#{request_body["data"][0]["set"]}.json") if @json.nil?

  #push objects to array
  request_body["data"].each_with_index do |i, index|
    @json << { name: i["name"], image_uris: i["image_uris"]["border_crop"], set: i["set"], oracle_text: i["oracle_text"], card_id: index }
  end
  
  #push array into file
  #File.open("#{request_body["data"][0]["set"]}.json", "w") {|file| file.write @json.to_json }

  #recurse to the next page
  get_set_recursively(request_body["next_page"]) if request_body["next_page"]
end

def get_sets(*args)
  args.each do |a|
    get_set_recursively(a)
  end
  FileUtils.touch("sets.json")
  File.open("sets.json", "w") {|file| file.write @json.to_json }
end

get_sets("https://api.scryfall.com/cards/search?order=set&q=e%3Aiko&unique=prints", "https://api.scryfall.com/cards/search?order=set&q=e%3Aeld&unique=prints", "https://api.scryfall.com/cards/search?order=set&q=e%3Athb&unique=prints")
