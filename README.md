# discordrbの調査用リポジトリ
## 利用方法
1. DiscordでBot作成
2. Oauth2より、招待用のリンクを作成してBotをサーバーへ招待
3. 本リポジトリのコードを利用してメッセージの送信

### 詳細リンク
- [Bot作成方法](https://discordpy.readthedocs.io/ja/latest/discord.html)
- [discordrb gem リポジトリ](https://github.com/shardlab/discordrb?tab=readme-ov-file)
- [Discordrb::API::Channel](https://www.rubydoc.info/github/meew0/discordrb/Discordrb/API/Channel#create_message-class_method)

## 結果
![botメッセージ](https://github.com/majestictree/discordrb_test/assets/35989660/a7454428-e3b9-4c56-b83a-64c180753073)


# 調査結果
## 利用技術
- Discord API::Channel or Bot
- [gem discordrb](https://github.com/shardlab/discordrb?tab=readme-ov-file#usage)(インストール済み)

## 利用するDiscordrbクラス
API::Channel or Botクラスから任意のチャンネルへメッセージを送信できる。
- [API::Channel](https://www.rubydoc.info/github/meew0/discordrb/Discordrb/API/Channel)
- [Bot](https://www.rubydoc.info/github/meew0/discordrb/Discordrb/Bot)
- [Channel](https://www.rubydoc.info/github/meew0/discordrb/Discordrb/Channel)

## 利用するDiscordrbインスタンスメソッド
- API::Channel -> チャンネルへのメッセージ送信
  - [#create_message](https://www.rubydoc.info/github/meew0/discordrb/Discordrb/API/Channel#create_message-class_method)
  - [Discord側のAPI](https://discord.com/developers/docs/resources/channel#create-message)
- Bot -> チャンネルへのメッセージ送信
  - [#send_message](https://www.rubydoc.info/github/meew0/discordrb/Discordrb/Bot#send_message-instance_method)
- UserAttributes -> メンションの作成？ただ、<@id>の形式でメンション作れそう。
  - [#mention](https://www.rubydoc.info/github/meew0/discordrb/Discordrb%2FUserAttributes:mention)

## 処理流れ
### 受講生呼び出し
1. 5分ごとに動作するバッチでイベントを発火させる
2. ラーメン面談を予約している受講生のDiscordIDをAdmin（DB）から取得
3. API::Channelメソッド等により、任意のチャンネルへ該当受講生へのメンション付きメッセージを作成・送信

### 繰越
[WIP]
- 繰越の運用方法等から確認
