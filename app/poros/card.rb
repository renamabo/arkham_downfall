# # # frozen_string_literal: true
# class Card < ApplicationRecord
#   CARD_VARS = ["pack_name", "type_code", "subtype_code", "faction_name", "code", "name", "subname", "text", "quantity", "deck_limit", "traits", "flavor", "permanent", "double_sided", "back_text", "back_flavor", "imagesrc", "backimagesrc"]
  
#   attr_reader :pack_name,
#               :type_code,
#               :subtype_code,
#               :faction_name,
#               :code,
#               :name,
#               :subname,
#               :text,
#               :quantity,
#               :deck_limit,
#               :traits,
#               :flavor,
#               :permanent,
#               :double_sided,
#               :back_text,
#               :back_flavor,
#               :imagesrc,
#               :backimagesrc

#   def initialize(card_data)
#     @pack_name = card_data[:pack_name]
#     @type_code = card_data[:type_code]
#     @subtype_code = card_data[:subtype_code]
#     @faction_name = card_data[:faction_name]
#     @code = card_data[:code]
#     @name = card_data[:name]
#     @subname = card_data[:subname]
#     @text = card_data[:text]
#     @quantity = card_data[:quantity]
#     @deck_limit = card_data[:deck_limit]
#     @traits = card_data[:traits]
#     @flavor = card_data[:flavor]
#     @permanent = card_data[:permanent]
#     @double_sided = card_data[:double_sided]
#     @back_text = card_data[:back_text]
#     @back_flavor = card_data[:back_flavor]
#     @imagesrc = card_data[:imagesrc]
#     @backimagesrc = card_data[:backimagesrc]
#   end
# end