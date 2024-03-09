adjacent(A, B, List) :- nextto(A, B, List); nextto(B, A, List).   %1
solve(PineiNero, WindowsXP) :-   %2
length(Grafeia,5),   %3
member(grafeio(kokkino, plhroforikhs, _, _, _), Grafeia),   %4
member(grafeio(_, organwshs, _, _, macbookpro), Grafeia),   %5
member(grafeio(prasino, _, kafe, _, _), Grafeia),   %6
member(grafeio(_, oikonomiko, tsai, _, _), Grafeia),   %7
nextto(grafeio(mpez, _, _, _, _), grafeio(prasino, _, _, _, _), Grafeia),   %8
member(grafeio(_, _, _, iphone, macbookair), Grafeia),   %9
member(grafeio(kitrino, _, _, blackberry, _), Grafeia),   %10
nth1(3, Grafeia, grafeio(_, _, gala, _, _)),   %11
nth1(1, Grafeia, grafeio(_, sxesewn, _, _, _)),   %12
adjacent(grafeio(_, _, _, nokia, _), grafeio(_, _, _, _, netbook), Grafeia),   %13
adjacent(grafeio(_, _, _, blackberry, _), grafeio(_, _, _, _, windows7), Grafeia),   %14
member(grafeio(_, _, portokalada, android, _), Grafeia),   %15
member(grafeio(_, promitheiwn, _, ericsson, _), Grafeia),   %16
adjacent(grafeio(_, sxesewn, _, _, _), grafeio(mple, _, _, _, _), Grafeia),   %17
member(grafeio(_, PineiNero, nero, _, _), Grafeia),   %18
member(grafeio(_, WindowsXP, _, _, windowsxp), Grafeia).   %19