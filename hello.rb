require 'sinatra'     # Load the Sinatra web framework

get("/") do
  html = "Hello, world!"
  html.concat("<div><a href='/waffles'>show me waffles</a></div>")
  html.concat("<div><a href='/waffles/chocolate'>show me chocolate</a></div>")
  html.concat("<div><a href='/bake?baked_good=cookies&count=10'>bake 10 cookies</a></div>")
  html.concat("<div><a href='/bake?baked_good=cronut&count=5'>bake 5 cronuts</a></div>")
  html.concat("<div><a href='/bake?baked_good=cupcakes&count=1138'>bake 1138 cupcakes</a></div>")
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
    html.concat("<li>#{baked_good} number #{num}</li>")
  end
  html.concat("</ul>")

  body(html)
end
