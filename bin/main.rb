# !/usr/bin/env ruby
require_relative 'telegram/bot'
require_relative 'dotenv/load'
require_relative '../lib/joke'
token = ENV['TELEGRAM_TOKEN']

Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, wlecome to telebot #{message.from.first_name}")
      when '/hi'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, wlecome to my bot what can I do for you #{message.from.first_name}")
      when '/help'
        greet = "Hi, #{message.from.first_name} I am a chatbot and my name TELEBOT
        \n Commands:
        \n /start: Greets the user.
        \n /help: Displays the list of acceptable commands.
        \n /hi: The bot says hello.
        \n /hello: The bot says hi.
        \n /quote: Displays quote.
        \n /joke: ask for a joke and gives a joke about food
        \n /bye: Says goodbye to the user."
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, wlecome to telebot #{greet}")
      when '/joke'
        joke = Joke.new.display_joke
        bot.api.send_message(chat_id: message.chat.id, text: joke)
      else
        bot.api.send_message(chat_id: message.chat.id, text: 'I do not recognize that command')
      end
    end
  end