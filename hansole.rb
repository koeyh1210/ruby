require './util'

class Hansole
  def self.parsing_hansole(data)
    data = data.to_s # conver data to String

    parsed_data = {} # make empty hash for result

    parsed_data[:cp] = data[0, 2].to_i(16)
    parsed_data[:dp] = data[2, 4].to_i(16)
    parsed_data[:tp] = data[6, 4].to_i(16)

    parsed_data[:i_v_a] = data[10, 2].to_i(16)
    parsed_data[:i_i_a] = data[12, 2].to_i(16)

    parsed_data[:i_v_b] = data[14, 2].to_i(16)
    parsed_data[:i_i_b] = data[16, 2].to_i(16)

    parsed_data[:o_v_r] = data[18, 2].to_i(16)
    parsed_data[:o_i_r] = data[20, 2].to_i(16)

    parsed_data[:o_v_s] = data[22, 2].to_i(16)
    parsed_data[:o_i_s] = data[24, 2].to_i(16)

    parsed_data[:o_v_t] = data[26, 2].to_i(16)
    parsed_data[:o_i_t] = data[28, 2].to_i(16)

    parsed_data[:hw_fault] = Util.hex_to_binary_string(data[30, 2])
    parsed_data[:sw_fault] = Util.hex_to_binary_string(data[32, 2])

    return parsed_data
  end
end