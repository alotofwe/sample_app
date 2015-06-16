class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    Net::POP3.auth_only('mail008.lolipop.jp', 110, 'info@alotofwe.pw', 'OhMyDirty41L')
    mail to: user.email, subject: "Password reset"
  end
end
