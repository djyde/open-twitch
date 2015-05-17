class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :games
  has_one :channel

  after_create do
    create_channel(self)
  end

  protected
    def create_channel(user)
      puts self.channel
      channel = Channel.new do |c|
        c.name = "#{user.username} 的频道"
        c.description = "无"
        c.user = self
      end
      channel.save
    end
end
