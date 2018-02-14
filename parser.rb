#coding: utf-8
require './hansole'

class Parser
  def register(params)

  end

  def filter(event)
    packets = event.get("parsedCon")[0]
    puts packets

    energy_type = to_inverter_type(packets[0, 2])


    return [event]
  end


  def to_inverter_type(header)
    inv_type = header.to_s.to_i(16)
    return inv_type
  end
end