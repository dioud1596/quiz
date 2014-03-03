module FormHelper
  def setup_user(user)
    3.times { user.answers.build }
    user
  end
end