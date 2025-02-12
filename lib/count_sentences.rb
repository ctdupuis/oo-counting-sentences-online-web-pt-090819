require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    array = self.split(/[.?!]/)
    array.delete_if{ |sent| sent.empty? }
    array.length
    binding.pry
  end
  
end