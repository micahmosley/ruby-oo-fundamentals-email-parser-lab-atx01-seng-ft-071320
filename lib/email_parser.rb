# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
  def initialize (emails)
    @emails=emails
  end 
  
  def parse 
    @parsed=@emails.split(/[\s,]/)
    @parsed=@parsed.uniq
    @parsed.delete_if {|email| email==""}
    @parsed
  end
  
  
  
end 