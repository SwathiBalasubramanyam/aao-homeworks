class User < ApplicationRecord

    validates :username, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, length: {minimum: 6, allow_nil: true}

    before_validation :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username, password)
        user_obj = User.find_by(username: username, password: password)
        user_obj && user_obj.is_password?(password) ? user_obj : nil
    end

    def generate_unique_session_token
        while true
            session_token = SecureRandom::urlsafe_base64
            return session_token unless User.exists?(session_token: session_token)
        end
    end

    def password=(password)
        @password = password 
        # If you dont set this then you will allow nil in db for password_digest
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        password_obj = BCrypt::Password.new(self.password_digest)
        password_obj.is_password?(password)
    end

    def reset_session_token!
        self.session_token = generate_unique_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end

end