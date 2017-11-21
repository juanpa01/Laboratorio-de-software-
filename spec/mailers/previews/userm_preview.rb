# Preview all emails at http://localhost:3000/rails/mailers/userm
class UsermPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/userm/notify
  def notify
    UsermMailer.notify  User.new(email: "juan-pablo961115@utp.edu.co", encrypted_password: "123456", nombre: "juan ")
  end

end
