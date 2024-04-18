require 'discordrb'

Discordrb::API::Channel.create_message(
  "Bot #{ENV['DISCORD_BOT_TOKEN']}",
  ENV['DISCORD_CHANNEL_ID'],
  'DiscordAPIのtestになります！お騒がせしてすいません！'
)
