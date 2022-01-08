class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Pepsi Hangi yılda kurulmuştur ______",
    "options": ['1996', '2001', '2005', '1997'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Kazandrio şimdiye kadar kaç paralık ödül dağıtmıştır.",
    "options": ['100 bin', '10 bin', '500 bin', '250 bin'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Kazandrionun kaç indirmesi vardır",
    "options": ['1 milyon', '10 milyon', '20 milyon', '30 milyon'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Kazanrio Hackathonunu kim kazanmıştır",
    "options": ['Ekip 1', 'Ekip 2', 'Ekip 4', 'Hiçbiri'],
    "answer_index": 2,
  },
];
