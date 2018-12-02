class Singleton
  private_class_method :new
  @@single_object = nil

  class << self
    def create
      new
    end

    def get_instance
      if @@single_object.nil?
        @@single_object = create
        puts('インスタンスを生成しました。')
      end
      @@single_object
    end
  end
end
