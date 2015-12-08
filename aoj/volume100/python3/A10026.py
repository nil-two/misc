while True:
    no_items = int(input())
    if no_items == 0:
        break

    nums = list(map(int, input().split()))

    average = sum(nums) / len(nums)
    variance = sum([(num-average) ** 2 for num in nums]) / len(nums)
    standard_deviation = variance ** 0.5

    print('%.6f' % standard_deviation)
