require_relative "../lib/bomb"
require_relative "../lib/wire"
require_relative "../lib/wire_box"

def get_test_wire_box
  disarm_wires = get_disarm_wires
  exploding_wires = get_exploding_wires

  box = WireBox.new(disarm_wires.concat(exploding_wires))
  box.device = Bomb.new

  box
end

private

def get_disarm_wires
  [
    Wire.new(:red),
    Wire.new(:black)
  ].each { |wire| wire.type = :disarm }
end

def get_exploding_wires
  [
    Wire.new(:blue),
    Wire.new(:green)
  ].each { |wire| wire.type = :exploding }
end
