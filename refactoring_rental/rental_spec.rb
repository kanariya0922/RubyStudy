# -*- coding: utf-8 -*-
# http://2out3rd.blogspot.jp/2011/02/ruby.html を参考に
#

require_relative './rental.rb'

describe Customer, "明細書には" do
  before do
    @customer = Customer.new("Kanary")
    movie = Movie.new("The Sound of Music", Movie::REGULAR)
    @customer.add_rental Rental.new(movie, 1)
  end

  it "借りた人の名前が表示されている" do
    @customer.statement.should match /^Rental Record for Kanary$/
  end

  it "借りた映画名と金額が表示されている" do
    @customer.statement.should match /^\tThe Sound of Music\t[\d\.]$/
  end

  it "合計が表示されている" do
    @customer.statement.should match /^Amount owed is [\d\.]$/
  end
end
