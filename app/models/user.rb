class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :characters, dependent: :destroy
  has_many :announcements, dependent: :destroy
  has_many :leaders, dependent: :destroy
  has_many :events, through: :leaders

  def participate?(event)
      roles = event.roles
      characters.each do |char| 
      if char.participating.where(role_id: roles).count > 0
        return true
      end
    end
    false
  end

  def participate(event)
      roles = event.roles
      characters.each do |char| 
        participate = char.participating.where(role_id: roles).first
        return participate unless participate.nil?
      end
    nil
  end

  def lead?(event) 
    if is_admin 
      return true
    else
      return leaders.where(event_id: event).count > 0
    end
  end

end
