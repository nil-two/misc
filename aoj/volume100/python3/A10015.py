import sys

input() # skip

existing_cards = {}
for card in sys.stdin:
   existing_cards[card.rstrip()] = True

for kind in ['S', 'H', 'C', 'D']:
    for index in range(1, 14):
        card = kind + ' ' + str(index)
        if not card in existing_cards:
            print(card)
