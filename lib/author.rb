class Author
    attr_accessor :title, :name
    @@post_count = 0
  
    def initialize(name)
      @name = name
      @posts = []
    end

    def add_post(post)
      post.author = self
    end
  
    def add_post_by_title (title)
      post = Post.new(title)
      post.author = self
    end

    def posts
        Post.all.select { |post| post.author == self }
    end

    def self.post_count
        Post.all.count
    end
end 