class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :games
  has_one :channel

  before_save :create_channel

  protected
    def create_channel
      channel = self.channel.new do |c|
        c.name = "#{self.username} 的频道"
        c.description = "无"
      end
      channel.save
    end
end
