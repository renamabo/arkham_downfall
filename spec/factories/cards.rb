FactoryBot.define do
  factory :card do
    pack_name { "MyString" }
    type_code { "MyString" }
    type_name { "MyString" }
    subtype_code { "MyString" }
    faction_name { "MyString" }
    code { 1 }
    name { "MyString" }
    subname { "MyString" }
    text { "MyString" }
    quantity { 1 }
    deck_limit { 1 }
    traits { "MyString" }
    permanent { false }
    double_sided { false }
    back_text { "MyString" }
    back_flavor { "MyString" }
    imagesrc { "MyString" }
    backimagesrc { "MyString" }
  end
end
