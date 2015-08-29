using Millboard
using Base.Test

board = []
@test """
+==+""" == table(board) |> string


board = [11 12 13; 21 22 23]
@test """
+===+====+====+====+
|   |  1 |  2 |  3 |
+===+====+====+====+
| 1 | 11 | 12 | 13 |
+---+----+----+----+
| 2 | 21 | 22 | 23 |
+---+----+----+----+""" == table(board) |> string


board = ([1 2], [5 6;7 8], [9 10; 11 12])
@test """
+===+=====+=====+=======+
|   |   1 |   2 |     3 |
+===+=====+=====+=======+
|   | 1 2 | 5 6 |  9 10 |
| 1 |     | 7 8 | 11 12 |
+---+-----+-----+-------+""" == table(board) |> string

@test """
+========+=====+=====+=======+
|        |   x |   y |     z |
+========+=====+=====+=======+
|        | 1 2 | 5 6 |  9 10 |
| result |     | 7 8 | 11 12 |
+--------+-----+-----+-------+""" ==
  table(board, :colnames=>["x" "y" "z"], :rownames=>["result"]) |> string


board = ([1 2], [5 6;7 8], [9 10; 11 12])
@test """
+===+=====+=====+=======+
|   |   1 |   2 |     3 |
+===+=====+=====+=======+
|   | 1 2 | 5 6 |  9 10 |
| 1 |     | 7 8 | 11 12 |
+---+-----+-----+-------+""" == table(board) |> string


board = ([], [5 6;7 8], [9 10; 11 12])
@test """
+===+===+=====+=======+
|   | 1 |   2 |     3 |
+===+===+=====+=======+
|   |   | 5 6 |  9 10 |
| 1 |   | 7 8 | 11 12 |
+---+---+-----+-------+""" == table(board) |> string


board = ([1 2;3 4], [5 6;7 8], [9 10; 11 12])
@test """
+===+=====+=====+=======+
|   |   1 |   2 |     3 |
+===+=====+=====+=======+
|   | 1 2 | 5 6 |  9 10 |
| 1 | 3 4 | 7 8 | 11 12 |
+---+-----+-----+-------+""" == table(board) |> string
