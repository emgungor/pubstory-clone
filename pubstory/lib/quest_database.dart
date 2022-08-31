class Quests {
  String questLog;
  bool questAnswer;

  Quests({required this.questLog, required this.questAnswer});
}

class QuestDataBase {
  int _questIndex = 0;

  final List<Quests> _questDataBase = [
    Quests(questLog: "Task1", questAnswer: true),
    Quests(questLog: "Task2", questAnswer: true),
    Quests(questLog: "Task3", questAnswer: true),
    Quests(questLog: "Task4", questAnswer: false),
    Quests(questLog: "Task5", questAnswer: true),
  ];

  String getQuestLog() {
    return _questDataBase[_questIndex].questLog;
  }

  bool getQuestAnswer() {
    return _questDataBase[_questIndex].questAnswer;
  }

  void nextQuest() {
    if (_questIndex + 1 < _questDataBase.length) {
      _questIndex++;
    }
  }

  bool questFinish() {
    if (_questIndex + 1 >= _questDataBase.length) {
      return true;
    } else {
      return false;
    }
  }

  void questRestart() {
    _questIndex = 0;
  }
}
