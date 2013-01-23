#!/usr/bin/ruby
# encoding: utf-8
#
# はじめてのRuby 例1-19
# 人名がよくわからないのでアレンジした

#徳川葵三代
family_name = "徳川"
arr_last_name = ["家康", "秀忠", "家光"]

#mapメソッドでarrayの各要素にfamily_name を追加
p arr_last_name.map{|name| "#{family_name} #{name}" }


#Yellow Magic Orchestra
hash_ymo = {
  "Hosono" => "Haruomi", "Takahashi" => "Yukihiro", "Sakamoto" => "Ryuichi"
}

#eachメソッドで項目ごとの要素を取り出す
hash_ymo.each do |key, value|
  puts "#{value} #{key}"
end
