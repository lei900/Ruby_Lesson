class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

p1 = "What's the color of banana?\n(a)Yellow\n(b)Blue\n(c)Red"
p2 = "Do you have a good day?\n(a)Yes\n(b)No\n(c)You guess"
p3 = "Could you tell me your name?\n(a)Yes,I'm Mike\n(b)No,I won't\n(c)You guess"

questions = [
   Question.new(p1, "a"),
   Question.new(p2, "b"),
   Question.new(p3, "c")
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp
        if answer == question.answer
          score += 1
         end
    end
    puts "You've got " + score.to_s + "/" + questions.length().to_s
end

run_test(questions)