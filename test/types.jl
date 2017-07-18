using Millboard
using Base.Test

set_table_mode(:grid_tables)

types = [AbstractString, Void]
board = [T.abstract for T=types]

@test """
+----------------+----------+
|                | abstract |
+================+==========+
| AbstractString |     true |
+----------------+----------+
|           Void |    false |
+----------------+----------+""" == table(board, colnames=["abstract"], rownames=types) |> string
