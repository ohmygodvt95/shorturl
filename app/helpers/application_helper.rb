module ApplicationHelper
  ALPHABET = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  BASE = ALPHABET.length
  INIT = BASE**4

  def encode num
    num += INIT
    str = ""
    while num > 0 do
      str = ALPHABET[num % BASE] + str
      num /= BASE
    end
    str.reverse
  end

  def full_title page_title = ""
    base_title = t "base_title"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end
end
