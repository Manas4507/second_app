

class QuizQuestion{

const QuizQuestion(this.text,this.ans);
  final String text;
  final List<String> ans;

  List <String> getShuffledAnswer(){

    final shuffledlist=List.of(ans);
    shuffledlist.shuffle();
    return shuffledlist;


  }
}