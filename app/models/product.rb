# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  object            :string
#  oracle_id         :string
#  multiverse_ids    :string
#  mtgo_id           :string
#  arena_id          :string
#  tcgplayer_id      :string
#  name              :string
#  lang              :string
#  released_at       :string
#  uri               :string
#  scryfall_uri      :string
#  layout            :string
#  highres_image     :string
#  image_uris        :string
#  mana_cost         :string
#  cmc               :string
#  type_line         :string
#  oracle_text       :string
#  colors            :string
#  color_identity    :string
#  legalities        :string
#  games             :string
#  reserved          :string
#  foil              :string
#  nonfoil           :string
#  oversized         :string
#  promo             :string
#  reprint           :string
#  variation         :string
#  set               :string
#  set_name          :string
#  set_type          :string
#  set_uri           :string
#  set_search_uri    :string
#  scryfall_set_uri  :string
#  rulings_uri       :string
#  prints_search_uri :string
#  collector_number  :string
#  digital           :string
#  rarity            :string
#  flavor_text       :string
#  card_back_id      :string
#  artist            :string
#  artist_ids        :string
#  illustration_id   :string
#  border_color      :string
#  frame             :string
#  full_art          :string
#  textless          :string
#  booster           :string
#  story_spotlight   :string
#  edhrec_rank       :string
#  preview           :string
#  prices            :string
#  related_uris      :string
#  purchase_uris     :string
#
class Product < ApplicationRecord
end
