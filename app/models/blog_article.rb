class BlogArticle < ApplicationRecord

  mount_uploader :image, ImageBlogUploader
  
end
