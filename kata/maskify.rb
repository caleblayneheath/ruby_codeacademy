def maskify(cc)
  if cc.length <= 4
    return cc
  else
    return ((cc.length-4) * "#") + cc[-4].upto(cc[-1])
end

=begin
Test.assert_equals(maskify('4556364607935616'), '############5616')
Test.assert_equals(maskify('1'), '1')
Test.assert_equals(maskify('11111'), '#1111')
=end

puts maskify('4556364607935616')
puts maskify('1')
puts maskify('11111')
