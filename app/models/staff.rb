class Staff < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :name, :password, :password_confirmation
  
  validates :name,  :presence => true,
                    :length   => { :maximum => 50 }
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
                       
  before_save :encrypt_password
  
  # Return true if the user's password matches the submitted password.
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate(name, submitted_password)
    staff = find_by_name(name)
    return nil  if staff.nil?
    return staff if staff.has_password?(submitted_password)
  end
  
  private

    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end                    
end
