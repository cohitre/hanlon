# hanlon: Rails helpers defined in haml

## Example

    class RobGreeter
      include Hanlon
      load_template %q<

    - hanlon :yell do |message|
      %p= message.upcase

    - hanlon :message do
      %h1= yell 'Hey there, Rob'
      %p= 'I wanted to let you know that I just adore your flaming, red mane. You remind me of a confident jungle cat, constantly on the prowl. Hit me up soon, tiger.'
    >
    end

    puts RobGreeter.new.message

## Result

    <h1><p>HEY THERE, ROB</p></h1>
    <p>I wanted to let you know that I just adore your flaming, red mane. You remind me of a confident jungle cat, constantly on the prowl. Hit me up soon, tiger.</p>
