require 'sinatra'     # Load the Sinatra web framework
require 'data_mapper' # Load the DataMapper database library

require_relative 'database_setup'

class Message
  include DataMapper::Resource

  property :id,         Serial
  property :body,       Text,     required: true
  property :created_at, DateTime, required: true
end

DataMapper.finalize()
DataMapper.auto_upgrade!()

get("/") do
  records = Message.all(order: :created_at.desc)

  # The :index here corresponds to the "@@ index" below.
  erb(:index, locals: { messages: records })
end

post("/messages") do
  message_body = params["body"]
  message_time = DateTime.now

  message = Message.create(body: message_body, created_at: message_time)

  if message.saved?
    redirect("/")
  else
    # The :error here corresponds to the "@@ error" below.
    erb(:error)
  end
end

__END__

@@ layout
<!DOCTYPE html>
<html>
  <head>
    <title>Social Wall</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" type="text/css" href="normalize.css">
    <link rel="stylesheet" type="text/css" href="main.css">
  </head>
  <body>
    <div id="page">
      <h1>Social Wall</h1>
      <%= yield %>
    </div>
  </body>
</html>

@@ index
<form id="message-form" method="POST" action="/messages">
  <textarea id="message-body" name="body" placeholder="Enter a message here."></textarea>
  <button type="submit">Post Message</button>
</form>
<% if messages.empty? %>
  <h2>Sorry, no messages. :(</h2>
<% else %>
  <h2>Messages</h2>
  <ol class="message-list">
    <% messages.each do |message| %>
      <li>
        <div class="message-body">
          <%= message.body %>
        </div>
        <div class="message-timestamp">
          Posted on <%= message.created_at.strftime("%B %d, %Y at %l:%M%p") %>
        </div>
      </li>
    <% end %>
  </ol>
<% end %>

@@ error
<h2>Oh, no! An error.</h2>
<p>
Maybe you forgot to type a message?
If so, <a href="/">go back to the homepage</a> and try again.
</p>
