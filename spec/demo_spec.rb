require 'rails_helper'

describe 'demo' do
    it 'hello' do
        a = true
        expect(a).to eq true
    end

    it 'isTest' do
        expect(Rails.env).to eq 'test'
    end

    it 'factory learn' do
        task = create(:task)
        expect(task).not_to eq nil
        expect(task.title).to eq 'factory task title'
    end
end
