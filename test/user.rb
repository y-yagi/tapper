class User
  attr_accessor :name, :administrator

  include Tapper

  def taro
    self.name = "taro"
  end

  def admin
    self.administrator = true
  end

  private
    def helper_method
      "helper_method"
    end
end
