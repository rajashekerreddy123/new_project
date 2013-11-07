class ProductDrawer < ActiveRecord::Base
def self.draw(products)
	puts "hhhhhhhhhhhhhhhhhhhhhhhhhh",products
  pdf = PDF::Writer.new
  puts "ffffffffff",pdf
  products.each do |product|
  	puts "aaaaaaaaaaaaaa"
    pdf.text product.heading
  end
  pdf.render
end
end