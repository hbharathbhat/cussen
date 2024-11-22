#include <stdio.h>

#define N 8 // Number of bits in the binary numbers

// User-defined function for right shift using division
int shiftRight(int num, int shift) {
    for (int i = 0; i < shift; i++) {
        num = num / 2;
    }
    return num;
}

// User-defined function for left shift using multiplication
int shiftLeft(int num, int shift) {
    for (int i = 0; i < shift; i++) {
        num = num * 2;
    }
    return num;
}

// Function to perform Wallace multiplication
int wallaceMultiplier(int a, int b) {
    // Initialize arrays to hold partial products
    int partialSums[2 * N - 1] = {0};
    int counters[2 * N - 1] = {0};

    // Generate partial products
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            int product = (shiftRight(a, i) & 1) & (shiftRight(b, j) & 1);
            partialSums[i + j] += product;
            counters[i + j]++;
        }
    }

    // Perform reduction
    for (int i = 0; i < 2 * N - 1; i++) {
        if (partialSums[i] >= 2) {
            partialSums[i] = partialSums[i] - 2;
            partialSums[i + 1]++;
        }
    }

    // Perform final addition
    int result = 0;
    for (int i = 0; i < 2 * N - 1; i++) {
        result = result + shiftLeft(partialSums[i], i);
    }
    return result;
}

int main() {
    int num = 4;
    int arr[] = {3, 1, 4, 1, 5, 9};
    int n = sizeof(arr) / sizeof(arr[0]);
    int result[n];
    
    for (int i = 0; i < n; i++) {
        result[i] = wallaceMultiplier(num, arr[i]);
    }
    
    for (int i = 0; i < n; i++) {
        printf("%d ", result[i]);
    }
    printf("\n");

    return 0;
}

