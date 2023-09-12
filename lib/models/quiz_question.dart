class QuizQuestion{
  QuizQuestion(this.text,this.answers);
   final String text;
   final List<String>answers;

    List<String> answerShuffle(){
    List<String> shuffledanswer=List.of(answers);
    shuffledanswer.shuffle();
    return shuffledanswer;
   }
}