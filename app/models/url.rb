class Url < ApplicationRecord

  def shorten
    self.short_url = string_sample.shuffle()[0..url_length].join('')

  end

  def string_sample
    ("a".."z").to_a + ("A".."Z").to_a + (0..9).to_a.map{|num| num.to_s}
  end

  def url_length
    5 + (rand * 4).to_i
  end

end
