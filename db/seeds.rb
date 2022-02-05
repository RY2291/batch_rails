Rank.delete_all
User.delete_all


# テストデータ ユーザー情報
user1 = User.create(id: 1, name: "A")
user2 = User.create(id: 2, name: "B")
user3 = User.create(id: 3, name: "C")
user4 = User.create(id: 4, name: "D")
user5 = User.create(id: 5, name: "E")

# テストデータ ユーザー情報
UserScore.create(user_id: user1.id, score: 3, recived_at: Time.current)
UserScore.create(user_id: user1.id, score: 4, recived_at: Time.current)
UserScore.create(user_id: user1.id, score: 1, recived_at: Time.current)

UserScore.create(user_id: user2.id, score: 2, recived_at: Time.current)
UserScore.create(user_id: user2.id, score: 3, recived_at: Time.current)
UserScore.create(user_id: user2.id, score: 2, recived_at: Time.current)

UserScore.create(user_id: user3.id, score: 5, recived_at: Time.current)
UserScore.create(user_id: user3.id, score: 5, recived_at: Time.current)
UserScore.create(user_id: user3.id, score: 5, recived_at: Time.current)

UserScore.create(user_id: user4.id, score: 0, recived_at: Time.current)
UserScore.create(user_id: user4.id, score: 3, recived_at: Time.current)
UserScore.create(user_id: user4.id, score: 0, recived_at: Time.current)

UserScore.create(user_id: user5.id, score: 3, recived_at: Time.current)
UserScore.create(user_id: user5.id, score: 3, recived_at: Time.current)
UserScore.create(user_id: user5.id, score: 3, recived_at: Time.current)