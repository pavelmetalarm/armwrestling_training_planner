from dataclasses import dataclass, field
from typing import List, Literal

LoadType = Literal['light', 'medium', 'heavy']

@dataclass
class ExerciseLoad:
    week: int
    intensity: LoadType
    reps: int
    sets: int
    percent: int  # of 1RM

@dataclass
class Exercise:
    name: str
    display_name: str
    tags: List[str] = field(default_factory=list)
    plan: List[ExerciseLoad] = field(default_factory=list)