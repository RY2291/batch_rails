namespace :ranks do
  namespace :chapter2 do
    desc 'chapter2 ゲーム内のユーザランキング情報を更新する'
    task update: :environment do
      # 現在のランキング情報をリセット
      Rank.delete.all

      # ユーザごとにスコアの合計を計算する
      user_total_scores = User.all.map{ |user| user_id: user.id, total_score: user.user_scores.sum(&:score)}

      # ユーザごとのスコア合計の降順に並び替え、そこからランキング情報を再作成をする
      sorted_total_score_groups = user_total_scores
                    .group_by { |score| score[:total_score]}
                    .sort_by { |score, _| score * -1 }
                    .to_h
                    .values

      sorted_total_score_groups.each.with_index(1) do |scores, index|
        score.each do |total_score|
          Rank.create(user_id: total_score[:user_id], rank: index, score: total_score[:total_score])
        end
      end
    end
  end
end