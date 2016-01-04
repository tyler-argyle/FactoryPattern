class Switch < Product
  def initialize(name)
    super(name)
    @on_off = false
  end

  def use
    @on_off = !@on_off
    "The #{@name} is " << (@on_off ? 'on' : 'off')
  end

  def to_s
    @name
  end
end