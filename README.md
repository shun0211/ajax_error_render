# AjaxErrorRender
Formの送信をAjaxで通信で行った際、エラーメッセージを返すメソッドの提供をします。
このメソッドでは、#errorのHTML要素のinnerHTMLにエラーメッセージを挿入します。

## Usage
1. viewファイルの作成
```bash
$ rails generate ajax_error_render:install
```

2. 使用するコントローラーでモジュールをincludeします。\
例)
```ruby
require 'ajax_error_render'

class UsersController < ApplicationController
  include AjaxErrorRender

  def create
    @user = User.new(name: params[:user][:name])
    if @user.save
      redirect_to users_path
    else
      render_ajax_error(@user)
    end
  end
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'ajax_error_render'
```

```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install ajax_error_render
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
