class User < ActiveRecord::Base
  belongs_to :role
  has_many :restaurant_evaluations, :dependent => :restrict_with_exception
  has_many :agreements, :dependent => :restrict_with_exception

  attr_accessor :password
  EMAIL_REGEX = /@/
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create


  before_save :encrypt_password
  after_save :clear_password

  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted_password = BCrypt::Engine.hash_secret(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.encrypted_password == BCrypt::Engine.hash_secret(password, user.salt)
      user
    else
      nil
    end
  end

  def full_name
    return "#{self.first_name}" + " " + "#{self.last_name}"
  end
end
