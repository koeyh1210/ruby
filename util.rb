class Util
  def self.hex_to_binary_string (hex_s)
    s = hex_s.to_s.to_i(16).to_s(2)

    temp = "00000000"

    temp[temp.length - s.length, s.length] = s
    return temp
  end
end