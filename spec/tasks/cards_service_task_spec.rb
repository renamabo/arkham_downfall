require 'rails_helper'

Rails.application.load_tasks

RSpec.describe 'cards service task' do
    it 'can call `BaseService` and parse json payload', :vcr do
        array_proc = Rake::Task["cards:get_cards"].execute
        response = array_proc[0].call
        
        expect(response).to be_an(Array)
        expect(response.first).to have_key(:pack_code)
        expect(response.first).to have_key(:type_code)
        expect(response.first).to have_key(:faction_code)
        expect(response.first).to have_key(:name)
        expect(response.first).to have_key(:text)
    end
end