class Form::DecdateCollection < Form::Base

  FORM_COUNT = 31
  attr_accessor :decdates

  def initialize(attributes = {})
    super attributes
    self.decdates = FORM_COUNT.times.map { Decdate.new() } unless self.decdates.present?
  end
  
  # 上でsuper attributesとしているので必要
  def decdates_attributes=(attributes)
    self.decdates = attributes.map { |_, v| Decdate.new(v) }
  end

  def save
    # 実際にやりたいことはこれだけ
    # self.decdates.map(&:save!)

    # 複数件全て保存できた場合のみ実行したいので、transactionを使用する
    Decdate.transaction do
      self.decdates.map(&:save!)
    end
      return true
    rescue => e
      return false
  end
end