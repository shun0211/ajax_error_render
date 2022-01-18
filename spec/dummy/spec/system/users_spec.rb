require 'rails_helper'

RSpec.describe '/users', type: :system do
  # capybaraが今のところ動いていない
  xdescribe 'ユーザ作成' do
    context '名前が入力されていない場合' do
      it 'エラーメッセージが表示されること', js: true do
        visit new_user_path
        fill_in 'user[name]', with: nil
        click_on 'Create User'
        sleep 1
        expect(page).to have_content "Name can't be blank"
      end
    end
  end
end
