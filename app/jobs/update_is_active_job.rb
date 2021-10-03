class UpdateIsActiveJob < ApplicationJob
  queue_as :default

  def perform(id,user_id)
    Product.find(id).update(is_active: true)
    @product = Product.find(id)
    @user = User.find(user_id)
    PostMailer.send_email_user(@user, @product).deliver
  end
end
