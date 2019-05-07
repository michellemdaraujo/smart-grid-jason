// Agent subG in project IA.mas2j

/* Initial beliefs and rules */
off(subG).
unconnected(subG).
/* Initial goals */

/* Plans */

/* Connections */
+on(subB) <- -unconnected(subG); 
			.broadcast(untell,unconnected(subG));
			+connected(subG);
			.broadcast(tell, connected(subG)).

+on(subO) <- -unconnected(subG); 
			.broadcast(untell,unconnected(subG));
			+connected(subG);
			.broadcast(tell, connected(subG)).

+on(subN) <- -unconnected(subG); 
			.broadcast(untell,unconnected(subG));
			+connected(subG);
			.broadcast(tell, connected(subG)).

+on(subL) <- -unconnected(subG); 
			.broadcast(untell,unconnected(subG));
			+connected(subG);
			.broadcast(tell, connected(subG)).	
			
/* Get On */
+energy(X) : priority(subG) & connected(subG) & X >= 20 <- +on(subG); -off(subG).

+energy(X) : priority(subC) & unconnected(subC) & connected(subG) & X >= 20 <- +on(subG); -off(subG).

+on(subG) <- .broadcast(tell,on(subG)).
