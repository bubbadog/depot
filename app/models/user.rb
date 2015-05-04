class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password

  after_destroy :ensure_an_admin_remains # after_destroy hook.  Raising an exception rolls back the transaction, and sends it to the controller

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
end
