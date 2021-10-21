module ApplicationHelper
  ALPHABET = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  BASE = ALPHABET.length
  INIT = BASE**4

  def encode num
    num += INIT
    str = ""
 
