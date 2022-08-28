class Message {
  final String text;
  final DateTime date;
  final bool isSendByMe;

  Message({
    required this.text,
    required this.date,
    required this.isSendByMe,
  });
}

List<Message> messages = [
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
    isSendByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
    isSendByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 2, minutes: 1)),
    isSendByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 2, minutes: 1)),
    isSendByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 3, minutes: 1)),
    isSendByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 3, minutes: 1)),
    isSendByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 4, minutes: 1)),
    isSendByMe: false,
  ),
  Message(
    text: 'Yes sure!',
    date: DateTime.now().subtract(Duration(days: 4, minutes: 1)),
    isSendByMe: false,
  ),
].reversed.toList();
