for i in {1..10}; do
	gcc -O3 -o cussen cussen.c
	perf stat ./cussen
done

