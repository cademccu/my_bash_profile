
# star text (character)
ST = "9"

# 9 text lol
NINES = "6"

# upside down cross lol
CROSS = "$"

# fill array
arr = []
for i in range(50):
    arr.append([" "] * 150)

# next loops and statements make star
index = 74 - 30
for i in range(10, 40):
    arr[i][index] = ST
    arr[i][index + 1] = ST
    index += 1

index = 74 + 30
for i in range(10, 40):
    arr[i][index] = ST
    arr[i][index - 1] = ST
    index -= 1

arr[40][74] = ST

for i in range(29, 120):
    arr[29][i] = ST

index = 74 - 30 - 1
for i in range(10, 29):
    arr[i][index] = ST
    arr[i][index + 1] = ST
    arr[i][index + 2] = ST
    index += 4

index = 74 + 30 + 1
for i in range(10, 29):
    arr[i][index] = ST
    arr[i][index - 1] = ST
    arr[i][index - 2] = ST
    index -= 4

# add some details babey
# this is CANCEROUS but SHIT does it work
# i dont give a shit
# pick top right corner
def nine(x, y):
    arr[y][x:x+5] = NINES * 5
    arr[y+4][x:x+5] = NINES * 5
    for i in range(y+1, y+4):
        arr[i][x-1] = NINES
    for i in range(y+1, y+4):
        arr[i][x-1+6] = NINES
    xx = x-1+6
    for i in range(y-1 + 5, y+4 + 4):
        arr[i][xx] = NINES
        xx -= 1
        
nine(74 - 35, 10 + 5)
nine(74 + 35 - 4, 10 + 5)
nine(74 - 2, 20)

# cross
for i in range(10, 16):
    arr[i][74] = CROSS

for i in range(72, 77):
    arr[14][i] = CROSS

# write to file
with open("penta.txt", "w") as f:
    for i in range(len(arr)):
        s = ""
        for ii in range(len(arr[i])):
            s += arr[i][ii]
        f.write(s + "\n")
