class Team
    attr_accessor :name, :win, :lose, :draw

    def initialize(name, win, lose, draw)
        @name = name
        @win = win
        @lose = lose
        @draw = draw
    end

    def calc_win_rate
         self.win.to_f / (self.win + self.lose)
    end

    def show_team_result
        puts "#{self.name}の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は#{calc_win_rate}です。"
    end
end

team1 = Team.new("Giants", 67, 45, 8)
team2 = Team.new("Tiger", 60, 53, 7)
team3 = Team.new("Dragons", 60, 55, 5)
team4 = Team.new("BayStars", 56, 58, 6)
team5 = Team.new("Carp", 52, 56, 12)
team6 = Team.new("Swallows", 41, 69, 10)

teams = [team1, team2, team3, team4, team5, team6]
for team in teams
    team.show_team_result()
end