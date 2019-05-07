// Agent subO in project IA.mas2j



/* Initial beliefs and rules */
off(subO).
unconnected(subO).
/* Initial goals */

/* Plans */

/* Connections */
+on(subC) <- -unconnected(subO); 
			.broadcast(untell,unconnected(subO));
			+connected(subO);
			.broadcast(tell,connected(subO));
			.print("O conectado").


+on(subG) <- -unconnected(subO); 
			.broadcast(untell,unconnected(subO));
			+connected(subO);
			.broadcast(tell,unconnected(subO)).

			
/* Get On */
// isso aqui nao ta funcionando ainda, tem que arrumar
+energy(X) : priority(subO) & connected(subO) & X >= 40 <- +on(subO); -off(subO).

+energy(X) : priority(subC) & unconnected(subC) &  unconnected(subG) & unconnected(subL) & connected(subO) & X >= 40 <- +on(subO); -off(subO).

+energy(X) : priority(subG) & unconnected(subC) &  unconnected(subG) & unconnected(subL) & connected(subO) & X >= 40 <- +on(subO); -off(subO).

+energy(X) : priority(subL) & unconnected(subL) & connected(subO) & X >= 40 <- +on(subO); -off(subO).

+on(subO) <- .broadcast(tell,on(subO)).

