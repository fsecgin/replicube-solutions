# Replicube Solutions ✧

![First Place Finishes](https://img.shields.io/badge/%F0%9F%8F%86%20first%20place%20finishes-5-gold?style=for-the-badge)
![Puzzles Solved](https://img.shields.io/badge/puzzles%20solved-6%2F100-blue?style=for-the-badge)

Solutions and writeups for [Replicube](https://store.steampowered.com/app/3401490/Replicube/), an open-ended programming puzzle game about writing Lua code to replicate 3D voxel objects.

Every puzzle has two leaderboards: **code size** and **cycles** (execution efficiency). Optimizing for one often comes at the expense of the other, which makes the golfing super fun! We go for both (⇀‸↼‶)ᕤ

## Puzzles

### 01 - Replicube Tutorial Projects

| # | Puzzle | Code Size | Leaderboard | Cycles | Leaderboard | Date |
|:-:|--------|:---------:|:-----------:|:------:|:-----------:|:----:|
| 1 | [The Very Basics](01-replicube-tutorial-projects/the-very-basics/) | 2 | 🏆 #1 | 3.000 | 🏆 #1 | 2026-02-23 |
| 2 | [Conditions May Apply](01-replicube-tutorial-projects/conditions-may-apply/) | 6 | 🏆 #1 | 4.000 | #158 | 2026-02-23 |
| 3 | [In Comparison](01-replicube-tutorial-projects/in-comparison/) | 11 | #200 | 7.000 | #7812 | 2026-02-23 |
| 4 | [Explicit Nothingness](01-replicube-tutorial-projects/explicit-nothingness/) | 10 | 🏆 #1 | 5.673 | #8615 | 2026-02-23 |
| 5 | [Simple Quadrant](01-replicube-tutorial-projects/simple-quadrant/) | 12 | 🏆 #1 | 9.000 | #11358 | 2026-02-23 |
| 6 | [3x3 Grid](01-replicube-tutorial-projects/3x3-grid/) | 19 | #21 | 5.992 | #967 | 2026-02-23 |

> 6 / 100 puzzles solved ꒰ᐢ⸝⸝•༝•⸝⸝ᐢ꒱

## How Replicube works

Your code runs as a function evaluated for **every voxel** in a 3D grid. You get `x`, `y`, `z` coordinates and return a color (1-16) or 0 for empty. That's it! Simple concept, surprisingly deep rabbit hole.

```lua
-- fill the whole cube orange
return ORANGE

-- top half blue, bottom half orange, using bit math
return y+11&-4
```

## About

These solutions are a collaboration between me and [Claude](https://claude.ai) ✧⁺⸜(●˙▾˙●)⸝⁺✧

Each puzzle has its own folder with:
- `solution.lua` with the golfed code
- `README.md` with explanation and breakdown
- `solution.png` screenshot from the game's share feature
