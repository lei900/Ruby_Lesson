class Mentor
    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def self.job  #クラスメソッドを定義する
        puts "#{self.name}です。私は現役のITプロフェッショナルです。"
    end
end

class RailsMentor < Mentor
    
    def initialize(name)
        self.name = name
    end

    def self.job #クラスメソッドを定義する
        puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります"
    end
end

    akaide = RailsMentor.new("赤出")
    kirameki = Mentor.new("煌木")

Mentor.job
RailsMentor.job


=begin
class Mentor
    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def job  #インスタンスメソッドになっている
        puts "#{self.name}です。私は現役のITプロフェッショナルです。"
    end
end

class RailsMentor < Mentor
    
    def initialize(name)
        self.name = name
    end

    def job #インスタンスメソッドになっている
        puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります"
    end
end

    akaide = RailsMentor.new("赤出")
    kirameki = Mentor.new("煌木")
　
Mentor.job　#クラスメソッド未定義のため、unexpected methodというエラーが出るわけ
RailsMentor.job #クラスメソッド未定義のため、unexpected methodというエラーが出るわけ

akaide.job #インスタンスメソッドを呼び出すことでいけ
kirameki.job
=end