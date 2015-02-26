class Sample
  define_method :static_method do
    puts "Defined static method called"
  end

  def make_method(obj,method)
    metaclass = class << self; self; end
    metaclass.send(:define_method, :dynamic_method) do
        obj.send(method)
    end
  end
end

sample = Sample.new
sample.static_method
sample.make_method(" hello ", :reverse)
puts sample.dynamic_method