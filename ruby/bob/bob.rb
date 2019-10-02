# This is hacky and it is not-finished, having problem with one test.
# Reconsider not using the regex upon return for something more elegant.

class Bob
  def self.hey(text=nil)
    if text.strip.empty?
      "Fine. Be that way!"
    elsif (text =~ /\A[[:upper:]\s]*\W\Z/) && text.strip.end_with?('?')
      "Calm down, I know what I'm doing!"
    elsif (text =~ /\A[[:upper:]\s]*\Z/) || text.end_with?('!')
      "Whoa, chill out!"
    elsif text.strip.end_with?('?')
      "Sure."
    else
      "Whatever."
    end
  end
end