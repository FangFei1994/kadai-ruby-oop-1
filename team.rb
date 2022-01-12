class Team
    attr_accessor :name, :win, :lose, :draw
    
    def initialize
        self.name = ["Giants","Tigers","Dragons","BayStars","Carp","Swallows"]
        self.win = [67,60,60,56,52,41]
        self.lose = [45,53,55,58,56,69]
        self.draw = [8,7,5,6,12,10]
    end
    
    def calc_win_rate(win_time,lose_time)
        win_rate = win_time.to_f/(win_time+lose_time)
        return win_rate
    end
    
    def show_team_result
        team_size = self.name.length
        0.upto(team_size-1) do |number|
            puts "#{self.name[number]}の2020年の成績は#{self.win[number]}勝 #{self.lose[number]}敗 #{self.lose[number]}分、勝率は#{calc_win_rate(self.win[number],self.lose[number])}です。"
        end
    end
            
end

team1 = Team.new
team1.show_team_result