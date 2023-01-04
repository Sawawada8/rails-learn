require 'rails_helper'

describe 'demo system spec', type: :system do
    before do
        driven_by(:rack_test)
    end

    scenario 'demo' do
        task = Task.find_by(title: 'test task')
        expect(task).to eq nil

        # 指定のコントローラーのアクションにアクセス
        visit 'tasks#index'
        # 指定の文字列のリンクをクリック
        click_link 'New task'
        # form に記載する
        fill_in 'Title', with: 'test task'
        fill_in 'Description', with: 'test task desc'
        fill_in 'Due date', with: '2022-11-11'
        # submit
        click_button 'Create Task'

        # task が追加されたことを確認する
        task = Task.find_by(title: 'test task')
        expect(task).not_to eq nil
    end
end
