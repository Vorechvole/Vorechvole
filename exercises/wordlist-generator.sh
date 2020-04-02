#!/bin/bash

for p1 in 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w z; do 
	for p2 in 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w z; do 
		for p3 in 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w z; do 
			for p4 in 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w z; do 
				for p5 in 1 2 3 4 5 6 7 8 9 0 a b c d e f g h i j k l m n o p q r s t u v w z; do 
					 echo "$p1$p2$p3$p4$p5" >> wordlist
				done
			done
		done
	done
done
