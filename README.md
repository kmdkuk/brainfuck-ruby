# Brainfuck  
　javaで作ったのだけれど今私の中の時代はrubyになったのでした。 
## Brainfuckの命令
1. `>` ポインタをインクリメントする。ポインタをptrとすると、C言語の「`ptr++;`」に相当する。  
1. `<` ポインタをデクリメントする。C言語の「`ptr--;`」に相当。
1. `+` ポインタが指す値をインクリメントする。C言語の「`(*ptr)++;`」に相当。
1. `-` ポインタが指す値をデクリメントする。C言語の「(*ptr)--;」に相当。
1. `.` ポインタが指す値を出力に書き出す。C言語の「`putchar(*ptr);`」に相当。
1. `,` 入力から1バイト読み込んで、ポインタが指す先に代入する。C言語の「`*ptr=getchar();`」に相当。
1. `[` ポインタが指す値が0なら、対応する ] の直後にジャンプする。C言語の「`while(*ptr){`」に相当。
1. `]` ポインタが指す値が0でないなら、対応する [（の直後）にジャンプする。C言語の「`}`」に相当。
