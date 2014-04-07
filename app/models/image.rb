class Image < ActiveRecord::Base
	# after_initialize :defaults, unless: :persisted?
    before_save :default_values
    def default_values
        self.likes ||= 0
        self.likedby ||= ""
    end
    
    has_many :comments, :dependent => :destroy
	belongs_to :User
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true
	has_attached_file :image, :styles => {:best_use => "800x600>",:medium => "300x300>", :thumb => "100x100>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	# validates :user_id, presence: true

	# private
	# 	def defaults
	# 		self.user_id = 1
	# 		self.save
	# 	end
end

