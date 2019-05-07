// Agent priority in project IA.mas2j



/* Initial beliefs and rules */


energy(70).
off(subA).
off(subB).
off(subC).
off(subF).
off(subG).
off(subL).
off(subM).
off(subN).
off(subO).
off(subP).


/* Prioridades */

+on(subA) : off(subC) <- .broadcast(untell,priority(subA)); .broadcast(tell, priority(subC)); .print("Prioridade: C"). //C

+on(subA) : on(subC) & off(subG) <- .broadcast(untell,priority(subC)); .broadcast(tell, priority(subG)); .print("Prioridade: G"). //G

+on(subA) : on(subC) & on(subG) & off(subL) <- .broadcast(untell,priority(subG)); .broadcast(tell, priority(subL)); .print("Prioridade: L"). //L

+on(subA) : on(subC) & on(subG) & on(subL) & off(subO) <- .broadcast(untell,priority(subL)); .broadcast(tell, priority(subO)); .print("Prioridade: O"). //O

+on(subA) : on(subC) & on(subG) & on(subL) & on(subO) & off(subP) <- .broadcast(untell,priority(subO)); .broadcast(tell, priority(subP)); .print("Prioridade: P"). //P

+on(subA) : on(subC) & on(subG) & on(subL) & off(subO) & on(subP) & off(subF) <- .broadcast(untell,priority(subP)); .broadcast(tell, priority(subF)); .print("Prioridade: F"). //F

+on(subA) : on(subC) & on(subG) & on(subL) & off(subO) & on(subP) & on(subF) & off(subB) <- .broadcast(untell,priority(subF)); .broadcast(tell, priority(subB)); .print("Prioridade: B"). //B

+on(subA) : on(subC) & on(subG) & on(subL) & off(subO) & on(subP) & on(subF) & on(subB) & off(subM) <- .broadcast(untell,priority(subB)); .broadcast(tell, priority(subM)); .print("Prioridade: M"). //M

+on(subA) : on(subC) & on(subG) & on(subL) & off(subO) & on(subP) & on(subF) & on(subB) & on(subM) & off(subN) <- .broadcast(untell,priority(subN)); .broadcast(tell, priority(subN)); .print("Prioridade: N"). //N
