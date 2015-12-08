class Player:
    def __init__(self):
        self.score = 0
        self.card  = ''

a = Player()
b = Player()

no_gemes = int(input())
for _ in range(no_gemes):
    a.card, b.card = input().split()
    if a.card == b.card:
        a.score += 1
        b.score += 1
    elif a.card > b.card:
        a.score += 3
    elif a.card < b.card:
        b.score += 3

print(a.score, b.score)
