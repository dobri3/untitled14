class Word{
  final int id;
  final String writtenAns;
  final String rightAns;
  bool mistakeWasMade = false;

  Word({required this.id, required this.writtenAns, required this.rightAns});
}