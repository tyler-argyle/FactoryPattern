require_relative 'factory'
require_relative 'product'
require_relative 'lamp'

Factory.registered_product 'lamp', Switch
Factory.registered_product 'TV', Switch

lampy = Factory.create_product 'lamp'
teevee = Factory.create_product 'TV'

puts lampy.use
puts teevee.use

puts lampy.use