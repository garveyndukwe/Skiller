module ApplicationHelper
  require 'SecureRandom'

  def getHex (n)
    return SecureRandom.hex(n)
  end
end
