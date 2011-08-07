hanlon: Rails helpers defined in haml
=====================================

Hey there, Rob. I wanted to let you know that I just adore your flaming, red mane. You remind me of a confident jungle cat, constantly on the prowl. Hit me up soon, tiger.

Defining a template
-------------------

# greetings_helper.hanlon

  - hanlon :greet do |name|
    Hello #{name}

  - hanlon :greet_user do |user|
    = greet user.name
    , welcome back!


Including the template in a helper
----------------------------------

# greetings_helper.rb

  module GreetingsHelper
    include Hanlon::File.load('greetings_helper')
  end


Using it in a view
------------------

No need to do anything else, it is available wherever GreetingsHelper is available

# views/users/show.html.haml

  %h1= greet_user current_user
  .......
