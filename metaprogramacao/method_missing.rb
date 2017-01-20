
class Agenda
  attr_reader :contacts
  def initialize
    @contacts = {}
  end

  def add_contact(name, number)
    @contacts[name] = number
  end
end

class SmartPhone
  def initialize
    @agenda = Agenda.new
  end

  def method_missing(method, *args, &block)
    if @agenda.respond_to? method
      @agenda.send(method, *args)
    else
      super
    end
  end
end





class Camera
  def initialize
    @flash = true
    @gray_mode = false
    @hdr = true
    @focus_control = true
  end

  def enable_flash
    @flash = true
  end
  def disable_flash
    @flash = false
  end
end

class Camera
  def method_missing(method, *args, &block)
    method_name = method.to_s
    if method_name.start_with? 'enable_'
      feature = method_name.sub('enable_', '')
      if self.instance_variables.include? "@#{feature}".to_sym
        return self.instance_variable_set("@#{feature}".to_sym, true)
      end
    elsif method_name.start_with? 'disable_'
      feature = method_name.sub('disable_', '')
      if self.instance_variables.include? "@#{feature}".to_sym
        return self.instance_variable_set("@#{feature}".to_sym, false)
      end
    end
    super
  end
end


Camera.new
