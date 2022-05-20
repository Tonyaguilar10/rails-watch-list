require "open-uri"
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

urls = %w(https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1653054148/list_pre_define_4_bm0rrd.gif https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1653054148/list_pre_define_2_afpa6b.gif https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1653054148/list_pre_define_3_so7cm0.gif https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1653054147/list_pre_define_tjijjb.gif)

file = URI.open(urls[0])
list = List.new(name: 'My List')
list.photo.attach(io: file, filename: 'placeholder.gif', content_type: 'image/png')
list.save!

file = URI.open(urls[1])
list = List.new(name: 'Independant')
list.photo.attach(io: file, filename: 'placeholder.gif', content_type: 'image/png')
list.save!

file = URI.open(urls[2])
list = List.new(name: 'Favs')
list.photo.attach(io: file, filename: 'placeholder.gif', content_type: 'image/png')
list.save!

file = URI.open(urls[3])
list = List.new(name: 'Recomended')
list.photo.attach(io: file, filename: 'placeholder.gif', content_type: 'image/png')
list.save!

Bookmark.create(comment: "First list", movie_id: 1, list_id: 1)
Bookmark.create(comment: "First list", movie_id: 3, list_id: 1)
