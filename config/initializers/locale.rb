# frozen_string_literal: true

# # I18nライブラリに訳文の探索場所を指示する
# I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb, yml}')]
#
# I18n.enforce_available_locales = false

# アプリケーションでの利用を許可するロケールのリストを渡す
I18n.available_locales = %i[en ja]

# ロケールを:en以外に変更する
I18n.default_locale = :ja
