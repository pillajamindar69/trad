import 'dart:io';

void main() {
  List<List<String>> board = List.generate(3, (_) => List.generate(3, (_) => ' '));
  int currentPlayer = 1;

  while (true) {
    printBoard(board);
    stdout.write("Player $currentPlayer, enter your move (row col): ");
    String? input = stdin.readLineSync();

    if (input != null && input.contains(' ')) {
      var parts = input.split(' ');
      int row = int.tryParse(parts[0]) ?? -1;
      int col = int.tryParse(parts[1]) ?? -1;

      if (row >= 0 && row < 3 && col >= 0 && col < 3 && board[row][col] == ' ') {
        board[row][col] = currentPlayer == 1 ? 'X' : 'O';
        currentPlayer = 3 - currentPlayer; 
      } else {
        print("Invalid move. Try again.");
      }
    }
  }
}

void printBoard(List<List<String>> board) {
  print("\n${board.map((row) => row.join(' | ')).join('\n---------\n')}\n");
}
