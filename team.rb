class Team
    attr_accessor :name, :win, :lose, :draw
    
    def initialize (name,win,lose,draw)
        self.name = name
        self.win = win
        self.lose = lose
        self.draw = draw
    end
    
    def calc_win_rate(win_time,lose_time)
        win_rate = win_time.to_f/(win_time+lose_time)
        return win_rate
    end
    
    def show_team_result
        puts "#{self.name}の2020年の成績は#{self.win}勝 #{self.lose}敗 #{self.lose}分、勝率は#{calc_win_rate(self.win,self.lose)}です。"
    end
            
end

team1 = Team.new("Giants",67,45,8)
team1.show_team_result

team2 = Team.new("Tigers",60,53,7)
team2.show_team_result

team3 = Team.new("Dragons",60,55,5)
team3.show_team_result

team4 = Team.new("BayStars",56,58,6)
team4.show_team_result

team5 = Team.new("Carp",52,56,12)
team5.show_team_result

team6 = Team.new("Swallows",41,69,10)
team6.show_team_result