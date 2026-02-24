# Improbable Tower

> 49 tokens to build a tower. 1 wrong pull to topple it. Life's unfair like that (¬_¬ )

![Improbable Tower](solution.png)

| Grid | Code Size | Leaderboard | Cycles | Leaderboard | Date |
|:----:|:---------:|:-----------:|:------:|:-----------:|:----:|
| 9x9x9 | **49** | #148 | **17.558** | #1046 | 2026-02-24 |

## Solution

```lua
if y<-3 then return 2 end
e=y%2<1
if(e and x or z)==(y%4%3<1 and 2 or-2)and abs(e and z or x)<4 then return 15 end
```

## How it works

It's a Jenga tower! A GREY floor at the bottom, then BROWN planks stacked in rotating layers.

Each layer is a single plank that sits on one of four sides: right (x=2), front (z=-2), left (x=-2), back (z=2), cycling as you go up. The trick is encoding this rotation purely from `y`.

`y%2<1` tells us whether we're on an x-plank or z-plank layer. That boolean `e` swaps which axis is the fixed position and which is the free span.

For the sign (which side the plank sits on), `y%4%3<1` is a neat little double-mod trick. `y%4` cycles 0-3, then `%3` turns that into 0,1,2,0, and `<1` picks out the pairs where the plank faces the positive side. The whole rotation falls out of two cheap modular checks on `y`.
