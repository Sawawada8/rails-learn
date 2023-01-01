require 'rails_helper'

describe 'demo' do
    it 'hello' do
        a = true
        expect(a).to eq true
    end

    it 'isTest' do
        expect(Rails.env).to eq 'test'
    end
end
