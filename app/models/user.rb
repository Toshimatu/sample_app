class User < ApplicationRecord
  before_save { email.downcase! }
  #このselfは現在のユーザーを指す
  #before_saveコールバックにブロックを渡してユーザーのメールアドレスを設定する

  validates :name, presence: true, length: {maximum: 50 }
 #validates(:name, presence: true)　と書いてもいい}

 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, 
              length: { maximum: 255 }, #文字数の制限
              format: { with: VALID_EMAIL_REGEX }, #文字の型の制限　正規表現
              uniqueness: {case_sensitive: false } #唯一の値であるかどうか
              
  has_secure_password
end
