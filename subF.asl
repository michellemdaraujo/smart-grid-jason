// Agent subF in project IA.mas2j


/* Initial beliefs and rules */
off(subF).
unconnected(subF).
/* Initial goals */

/* Plans */

/* Connections */
+on(subC) <- -unconnected(subF); 
			.broadcast(untell,unconnected(subF));
			+connected(subF);
			.broadcast(tell, connected(subF)).
		
+on(subM) <- -unconnected(subF); 
			.broadcast(untell,unconnected(subF));
			+connected(subF);
			.broadcast(tell, connected(subF)).
			
/* Get On */
+energy(X) : priority(subF) & connected(subF) & X >= 50 <- +on(subF); -off(subF).

+on(subF) <- .broadcast(tell,on(subF)).
