$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

class FalseClass
  def truthy?
    false
  end
end

class NilClass
  def truthy?
    false
  end
end
