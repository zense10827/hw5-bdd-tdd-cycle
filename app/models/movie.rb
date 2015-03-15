#นางสาว ณัฐณิชา เหลืองอ่อน 5510613424
#นาย ธนภัทร ซู 5510613408

class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date, :director

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
end

