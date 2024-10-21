import Text "mo:base/Text";
actor Quiz {
    let Question : Text = "What is the Capital City of France?";
    var Answer: Text = "";
    let systemAnswer = "Paris";

    type Questions = {
      question: Text;
      answer: Text;
    };

    public func getQuestion() : async Text {
      return Question;
    };

    public func AnswerQuestion(answer: Text): async Text {
      Answer:= answer;
      
      if(Answer == systemAnswer) {
        return "This is a Correct Answer";
      } else {
        return "This is an Incorrect Answer";
      }
    }
};
