class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :weighins
  has_many :friends, through: :weighins

  mount_uploader :user_image, ImageUploader       

  def new
    @user = User.new
  end

end

