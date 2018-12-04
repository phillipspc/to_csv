class User < ApplicationRecord
  enum role: {
    guest: 0,
    manager: 1,
    admin: 2
  }
end
