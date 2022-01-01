if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    
    arr_sorted = list(arr)
    arr_sorted.sort(reverse=True)

    max_score = arr_sorted[0]
    for i in range(1, len(arr_sorted)):
        if arr_sorted[i] != max_score:
            print(arr_sorted[i])
            break
