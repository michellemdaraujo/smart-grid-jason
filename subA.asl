// Agent SubA in project IA.mas2j

/* Initial beliefs and rules */
connected(subA).
off(subA).
/* Initial goals */

/* Plans */
+energy(X): priority(subA) & connected(subA) & X>=5
			<- +on(subA);
			-off(subA);
			.broadcast(tell,on(subA)).
