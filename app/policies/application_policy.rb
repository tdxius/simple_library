class ApplicationPolicy
  attr_reader :user, :record

  class << self
    def resource(model_name)
      define_method(model_name) { record }
      send(:protected, model_name)
    end
  end

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end
end
