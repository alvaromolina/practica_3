class Post < ActiveRecord::Base
	has_many :comments
	has_many :history_posts

	before_save :save_history

	def save_history
		@history_post =  HistoryPost.new
	    @history_post.text = self.text
	    @history_post.title = self.title
	    @history_post.post_id = self.id
	    @history_post.save
	end
end
