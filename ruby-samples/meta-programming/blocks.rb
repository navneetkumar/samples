def test(code)
  puts "hi"
  v = code.call(3)
  puts "val is #{v}"
  puts "end"
end


sq = Proc.new do |x|
  x ** 2
end

test(lambda { |x| x ** 2 })

