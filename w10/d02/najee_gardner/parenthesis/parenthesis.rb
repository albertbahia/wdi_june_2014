# good: '((()()))' bad: '(((()))' bad: ')()('
def check_parenthesis(string)
  return false if string[0] == ')'

  paren_count = Hash.new(0)

  string.split('').each do |parenthesis|
    paren_count[parenthesis] += 1
  end

  paren_count['('] == paren_count[')'] ? true : false
end
