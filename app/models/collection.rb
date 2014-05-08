class Collection < ActiveRecord::Base
  # attr_accessible :image
  has_attached_file :image,
                    styles: { thumb: "200x200>", medium: "700x>" },
                    storage: :s3,
                    s3_credentials: { :bucket => ENV["S3_BUCKET_NAME"],
                                      :access_key_id => ENV["AWS_ACCESS_KEY_ID"],
                                      :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"] },
                    :path => "/images/:id/:style.:extension",
                    :url => ":s3_domain_url"

  do_not_validate_attachment_file_type :image

  belongs_to :user
  belongs_to :location

end
