require 'sinatra'     # Load the Sinatra web framework

get("/") do
  html = "Hello, world!"

  body(html)
end

get("/waffles") do
  html = "<h1>Waffles are delicious.</h1>"

  body(html)
end

get("/waffles/chocolate") do
  html = "<h1>Chocolate waffles: more delicious.</h1>"
  html.concat("<p>Don't belive me?!</p>")

  body(html)
end

# Visit, e.g., /bake?baked_good=waffles&count=20
get("/bake") do
  count      = Integer(params["count"])
  baked_good = String(params["baked_good"])

  html = "I'm going to bake #{count} #{baked_good}!"

  html.concat("<ul>")
  1.upto(count) do |num|
    html.concat("<li>Waffle number #{num}</li>")
  end
  html.concat("</ul>")

  body(html)
end
