# Variable Outcomes

> Two crossing diagonals through a black plane, with colors that shift in the shadow side ✧˖°

![Variable Outcomes](solution.png)

| Grid | Code Size | Leaderboard | Cycles | Leaderboard | Date |
|:----:|:---------:|:-----------:|:------:|:-----------:|:----:|
| 11x11x11 | **30** | #66 | **15.051** | #1113 | 2026-02-23 |

## Solution

```lua
a=step(0,z)
return z==0 and 3 or x==-y and 9+a or x==y and 5+a
```

## How it works

Three layers of geometry stacked with `and/or`:

| Check | Color | What |
|:------|:------|:-----|
| `z==0` | BLACK (3) | Full plane slice through the middle |
| `x==-y` | YELLOW (9) or LIGHTGREEN (10) | Anti-diagonal wall |
| `x==y` | PURPLE (5) or RED (6) | Diagonal wall |

`step(0,z)` returns 1 when z is negative, adding 1 to the base color for the "shadow" side. The x==-y check comes first so it wins at the origin where both diagonals cross (\*・ω・)ﾉ
