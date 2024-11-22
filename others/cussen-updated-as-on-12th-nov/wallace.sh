for i in {1..10}; do
	gcc -O3 -o wallace wallace.c
	perf stat ./wallace
done

