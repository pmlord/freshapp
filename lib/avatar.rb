module Avatar
  
  SIZES = { xl: 400, lg: 200, md: 80, sm: 30, xs: 20 }
  
  def self.pixel_size(size)
    SIZES[size]
  end
  
  def self.pixel_size_str(size)
    "#{SIZES[size]}px"
  end
  
  def self.gravatar(email_address, size)
    email_address.downcase!
    hash = Digest::MD5.hexdigest(email_address)
    px = size.is_a?(Symbol) ? pixel_size(size) : size
    "http://www.gravatar.com/avatar/#{hash}?s=#{px}&d=identicon"
  end
  
end
