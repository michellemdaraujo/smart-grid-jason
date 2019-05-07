// Agent subC in project IA.mas2j

/* Initial beliefs and rules */
off(subC).
unconnected(subC).
/* Initial goals */

/* Plans */

/* Connections */
+on(subA) <- -unconnected(subC); 
			.broadcast(untell,unconnected(subC));
			+connected(subC);
			.print("C conectado");
			.broadcast(tell,connected(subC)).
			
/* Get On */
+energy(X) : priority(subC) & connected(subC) & X >= 10 <- +on(subC); -off(subC).

+on(subC) <- .broadcast(tell,on(subC)).
