#Beispiel Aspect-Oriented Programming in Ruby anhand Logging-Aspekt.

require 'aspector'

#Beispiel-Klasse auf welche der Logging-Aspekt angewendet wird.
class ExampleClass
  def test(input)
    input.upcase
  end
end



#Der fürs Logging verwendete Aspekt.
class LoggingAspect < Aspector::Base

  ALL_METHODS = /.*/

  around ALL_METHODS, except: :class, method_arg: true do |method, proxy, *args, &block|

    class_method = "#{self.class}.#{method}"
    puts "Entering #{class_method}: #{args.join(',')}"

    result = proxy.call(*args, &block)

    puts "Exiting  #{class_method}: #{result}"

  end
end

    LoggingAspect.apply(ExampleClass)
    puts 'LoggingAspect is applied'

    instance = ExampleClass.new
    instance.test 'test input'

    LoggingAspect.disable
    puts 'LoggingAspect is disabled'
    instance.test 'test input'

    LoggingAspect.enable
    puts 'LoggingAspect is enabled again'
    instance.test 'second test input'


