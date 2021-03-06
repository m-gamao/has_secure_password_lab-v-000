class User < ActiveRecord::Base
    has_secure_password
end

#Spec:
#   it 'has a password field' do
#     expect(User.new).to respond_to(:password)

#   it 'has a name field' do
#     expect(User.new).to respond_to(:name)

#   it 'has a password confirmation field' do
#     expect(User.new).to respond_to(:password_confirmation)

#   it 'is valid if password and password_confirmation match' do
#     user = User.new
#     user.password = user.password_confirmation = 'foo'
#     expect(user.valid?).to be true    
#   end

#   it 'is valid if password is set and password_confirmation is nil' do
#      user = User.new
#      user.password = 'foo'
#      expect(user.valid?).to be true 
#   end

#   it "is invalid if password and password_confirmation are both non-nil and don't match" do
#     user = User.new
#     user.password = 'foo'
#     user.password_confirmation = 'fo0'
#     expect(user.valid?).to be false
#   end

#   describe 'authenticate' do
#     it 'returns the user if credentials match' do
#       user = User.new
#       user.password = 'foo'
#       expect(user.authenticate('foo')).to eq(user)
#     end

#     it "returns falsey if credentials don't match" do
#       user = User.new
#       user.password = 'foo'
#       expect(user.authenticate('fo0')).to be_falsey 
#     end
#   end
# ends