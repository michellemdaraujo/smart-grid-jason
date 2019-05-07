// Agent auxiliar in project IA.mas2j


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

/* Initial goals */
!tellenergy.
/* Plans */

+!tellenergy 
		<- .print("Começando...");
		.broadcast(tell, priority(subA));
		.print("Prioridade: A");
		.broadcast(tell, energy(70)).

/* Ligar */
+on(subA) : energy(X) <- .print("A está ligado");
						 -+energy(X-5);
						 -off(subA);
						 .print("Energia: ",(X-5));
						 .broadcast(untell,energy(X));
						 .broadcast(tell,energy(X-5)).
	
+on(subB) : energy(X) <- .print("B está ligado");
 						 -+energy(X-5);
						 -off(subB);
						 .print("Energia: ",(X-5));
						 .broadcast(untell,energy(X));
						 .broadcast(tell,energy(X-5)).
						
+on(subC) : energy(X) <- .print("C está ligado");
 						 -+energy(X-10);
						 -off(subC);
						 .print("Energia: ",(X-10));
						 .print("Prioridade: G");
						 .broadcast(untell,energy(X));
						 .broadcast(tell,energy(X-10)).

+on(subG) : energy(X) <- .print("G está ligado");
 						 -+energy(X-20);
						 -off(subG);
						 .print("Energia: ",(X-20));
						 .print("Prioridade: L");
						 .broadcast(untell,energy(X));
						 .broadcast(tell,energy(X-20)).

+on(subL) : energy(X) <- .print("L está ligado");
 						 -+energy(X-13);
						 -off(subL);
						 .print("Energia: ",(X-13));
						 .print("Prioridade: L");
						 .broadcast(untell,energy(X));
						 .broadcast(tell,energy(X-13)).
						 
+on(subF) : energy(X) <- .print("F está ligado");
 						 -+energy(X-50);
						 -off(subF);
						 .print("Energia: ",(X-50));
						 .print("Prioridade: B");
						 .broadcast(untell,energy(X));
						 .broadcast(tell,energy(X-50)).

+on(subO) : energy(X) <- .print("O está ligado");
 						 -+energy(X-40);
						 -off(subO);
						 .print("Energia: ",(X-40));
						 .print("Prioridade: P");
						 .broadcast(untell,energy(X));
						 .broadcast(tell,energy(X-40)).






