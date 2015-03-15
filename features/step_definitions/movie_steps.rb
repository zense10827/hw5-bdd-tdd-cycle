#นางสาว ณัฐณิชา เหลืองอ่อน 5510613424
#นาย ธนภัทร ซู 5510613408

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create movie
  end
end

Then /^the director of "(.*?)" should be "(.*?)"$/ do |movie_title, new_director|
  movie = Movie.find_by_title movie_title
  movie.director.should == new_director
end