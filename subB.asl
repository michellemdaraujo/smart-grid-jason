// Agent SubB in project IA.mas2j

/* Initial beliefs and rules */
off(subB).
unconnected(subB).
/* Initial goals */

/* Plans */

/* Connections */
+on(subA) <- -unconnected(subB); 
			.broadcast(untell,unconnected(subB));
			+connected(subB);
			.broadcast(tell,connected(subB)).

+on(subG) <- -unconnected(subB); 
			.broadcast(untell,unconnected(subB));
			+connected(subB);
			.broadcast(tell,connected(subB)).

+on(subP) <- -unconnected(subB); 
			.broadcast(untell,unconnected(subB));
			+connected(subB);
			.broadcast(tell,connected(subB)).	
			
/* Get On */
+energy(X) : priority(subB) & connected(subB) & X>=5 <- +on(subB); -off(subB).

+energy(X) : priority(subC) & unconnected(subC) &  unconnected(subG) & unconnected(subL) & unconnected(subO) & unconnected(subP) & unconnected(subF) & connected(subO) & X >= 5 <- +on(subB); -off(subB).

+energy(X) : priority(subG) & unconnected(subG) & unconnected(subL) & unconnected(subO) & unconnected(subP) & unconnected(subF) & connected(subO) & X >= 5 <- +on(subB); -off(subB).

+energy(X) : priority(subL) & unconnected(subL) & unconnected(subO) & unconnected(subP) & unconnected(subF) & connected(subO) & X >= 5 <- +on(subB); -off(subB).

+energy(X) : priority(subO) & unconnected(subO) & unconnected(subP) & unconnected(subF) & connected(subO) & X >= 5 <- +on(subB); -off(subB).

+energy(X) : priority(subP) & unconnected(subP) & unconnected(subF) & connected(subO) & X >= 5 <- +on(subB); -off(subB).

+energy(X) : priority(subF) & unconnected(subF) & connected(subO) & X >= 5 <- +on(subB); -off(subB).

+on(subB) <- .broadcast(tell,on(subB)).
