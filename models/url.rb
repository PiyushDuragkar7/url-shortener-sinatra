class URL < Sequel::Model
  def before_create
    self.shortened_url = generate_short_url
    super
  end

  private

  def generate_short_url
    SecureRandom.urlsafe_base64(6)
  end
end
