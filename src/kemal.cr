require "kemal"
require "./models/post"

get "/" do
  "Hello World!"
end

get "/posts" do |env|
  posts = [] of Post
  1000.times do
    posts << Post.new("Title", "Body")
  end
  render "src/views/posts/index.ecr"
end

Kemal.run
