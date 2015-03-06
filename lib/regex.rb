module Regex
  
  def self.email #from Authlogic
    @email_regex ||= begin
      email_name_regex  = '[A-Z0-9_\.%\+\-\']+'
      domain_head_regex = '(?:[A-Z0-9\-]+\.)+'
      domain_tld_regex  = '(?:[A-Z]{2,4}|museum|travel)'
      /\A#{email_name_regex}@#{domain_head_regex}#{domain_tld_regex}\z/i
    end
  end
  
end
