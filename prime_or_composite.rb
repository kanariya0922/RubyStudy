#!/usr/bin/ruby
# encoding: utf-8
#
# はじめてのRuby 例1-04
# ２から100までの数を素数と合成数に振り分ける

st = 2
en = 10

(st..en).each do |candidate|
  sqrt = Math.sqrt(candidate)
  factor_found = (st..sqrt).any? {|i| candidate % i == 0}

  if factor_found then
    print "#{candidate}は合成数\n"
  else
    print "#{candidate}は素数\n"
  end
end
