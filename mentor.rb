class Mentor
    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def self.job
        puts "#{self.name}です。私は現役のITプロフェッショナルです。"
    end
end

class RailsMentor < Mentor
    
    def initialize(name)
        self.name = name
    end

    def self.job
        puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります"
    end
end

    akaide = RailsMentor.new("赤出")
    kirameki = Mentor.new("煌木")

Mentor.job
RailsMentor.job