# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'card poro' do
  it 'exists and has attributes' do
    card = Card.new(pack_name: 'Edge of the earth', faction_name: 'survivor', code: '09990', name: 'Penguinfriend',
                    subname: 'n/a', text: '[[exhaust]] [[free action]]: Move to a connecting location. On penguinback.', quantity: 2, deck_limit: 2, traits: 'Creature. Ally.', permanent: false, imagesrc: 'www.arkhamdb.com/penguins!')

    expect(card).to be_a(Card)
    expect(card.pack_name).to eq('Edge of the earth')
    expect(card.faction_name).to eq('survivor')
    expect(card.code).to eq('09990')
    expect(card.traits).to eq('Creature. Ally.')
    expect(card.imagesrc).to eq('www.arkhamdb.com/penguins!')
  end
end
