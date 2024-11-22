#include <stdio.h>
#include <stdlib.h>

// Quick Sort
void swap(int* p1, int* p2) {
    int temp;
    temp = *p1;
    *p1 = *p2;
    *p2 = temp;
}

int partition(int arr[], int low, int high) {
    // Choose the pivot
    int pivot = arr[high];
    int i = (low - 1);

    for (int j = low; j < high; j++) {  // Corrected comparison to j < high instead of j <= high
        // If current element is smaller than the pivot
        if (arr[j] < pivot) {
            // Increment index of smaller element
            i++;
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

// The Quicksort function
void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

// Function to remove duplicates from a sorted array
int removeDuplicates(int arr[], int n) {
    if (n == 0 || n == 1)
        return n;

    int temp[n];
    int j = 0;

    for (int i = 0; i < n - 1; i++) {
        if (arr[i] != arr[i + 1])
            temp[j++] = arr[i];
    }
    temp[j++] = arr[n - 1];

    for (int i = 0; i < j; i++)
        arr[i] = temp[i];

    return j;
}

// A function to perform Russian peasant multiplication of two positive integers
int russian_peasant(int a, int b) {
    int res = 0;
    while (b > 0) {
        if (b % 2 == 1) {
            res = res + a;
        }
        a = a << 1;
        b = b >> 1;
    }
    return res;
}





void multiplication(int arr[], int n, int num) {
    int sort[n], pointer[n], count = 0, pointerMatrix[10][n], pointersSize[n];
    int array_copy[n], arr1[n];


    /*if (n <= 2) {
        for (int i = 0; i < n; i++) {
            arr[i] = russian_peasant(arr[i], num);
        }
        printf("Array: ");
        for(int i=0; i<n; i++){
            printf("%d ", arr[i]);
        }
        printf("\n");
        return;
    }*/

    while(n>1){
        for (int i = 0; i < n; i++)
            sort[i] = arr[i];

        // Sort the input array using Quick Sort
        quickSort(arr, 0, n - 1);
        int m = n;
        pointersSize[count] = n;

        // Remove duplicates from the sorted array
        n = removeDuplicates(arr, n);

        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                if (sort[i] == arr[j]) {
                    pointer[i] = j;
                    break;
                }
            }
        }
        for (int i = 0; i < m; i++)
            pointerMatrix[count][i] = pointer[i];

        for (int i = 0; i < m; i++)
            pointer[i] = 0;

        for(int j=0;j<n;j++)
        {
            arr1[j]=arr[j];
        }

        // Calculate the difference of successive elements
        for (int i = 1; i < n; i++) {
            arr[i] = arr1[i]-arr1[i-1];
        }
        count++;

    }

    for (int i = 0; i < n; i++)
        arr[i] = russian_peasant(arr[i], num);


    for(int k=count-1;k>0;k--)
    {

	    for(int i=0;i<pointersSize[k];i++)
	    	array_copy[i]=arr[i];
	    for(int i=0;i<pointersSize[k];i++)
	    	arr[i]=array_copy[pointerMatrix[k][i]];
	    for(int i=1;i<pointersSize[k];i++)
	    	arr[i]=arr[i]+arr[i-1];
    }
    for(int i=0;i<pointersSize[0];i++)
    	array_copy[i]=arr[i];
    for(int i=0;i<pointersSize[0];i++)
    	arr[i]=array_copy[pointerMatrix[0][i]];
    for(int i=0;i<pointersSize[0];i++)
    	printf("%d ",arr[i]);
    printf("\n");
}


int main() {
    int num = 4;
    int array[] = {3,1,4,1,5,9};
    int n = sizeof(array) / sizeof(array[0]);
    multiplication(array, n, num);
    return 0;
}

