class User
  attr_accessor :name, :gender

  include Tapper

  def taro
    self.name = "taro"
  end

  def man
    self.gender = :man
  end

  private
    def helper_method
      "helper_method"
    end
end
