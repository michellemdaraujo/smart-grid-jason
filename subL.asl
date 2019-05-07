// Agent subL in project IA.mas2j

/* Initial beliefs and rules */
off(subL).
unconnected(subL).
/* Initial goals */

/* Plans */

/* Connections */
+on(subG) <- -unconnected(subL); 
			.broadcast(untell,unconnected(subL));
			+connected(subL);
			.broadcast(tell, connected(subL)).
			
/* Get On */
+energy(X) : priority(subL) & connected(subL) & X >= 13 <- +on(subL); -off(subL).

+energy(X) : priority(subC) & unconnected(subC) & unconnected(subG) & connected(subL) & X >= 13 <- +on(subL); -off(subL).

+energy(X) : priority(subG) & unconnected(subC) & unconnected(subG) & connected(subL) & X >= 13 <- +on(subL); -off(subL).


+on(subL) <- .broadcast(tell,on(subL)).
