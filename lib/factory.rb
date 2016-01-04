module Factory
  @registered_products = {}

  def self.registered_product(product_id, product)
    @registered_products[product_id] = product.new.class
  end

  def self.create_product(product_id, *args)
    if args[1].nil?
      @registered_products.fetch(product_id).new
    else
      new_args = args[1..args.length]
      @registered_products.fetch(product_id).new *new_args
    end
  end
end