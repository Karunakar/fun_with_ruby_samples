def callbacks(procs)
  procs[:starting].call

  puts "Still going"

  procs[:finishing].call
end

callbacks(:starting => Proc.new{puts "Polling Starting" },:finishing => Proc.new{puts "Polling Finishing" })



def args(code)
  one, two = 1,2
  code.call(1,2)
end

args(Proc.new{|a,b,c| puts "Give me a = #{a} b = #{b}  and a class is #{a.class}"})
args(lambda.new{|a,b,c| puts "Give me a = #{a} b = #{b}  and a class is #{a.class}"})

#args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})