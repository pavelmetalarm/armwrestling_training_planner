import yaml
from pathlib import Path
from core.models import Exercise

EXERCISE_PATH = Path("config/exercises.yaml")

def load_exercises() -> list[Exercise]:
    with open(EXERCISE_PATH, 'r', encoding='utf-8') as f:
        raw = yaml.safe_load(f)
    return [Exercise(**e) for e in raw]

def get_week_plan(week: int) -> dict:
    exercises = load_exercises()
    week_plan = {}
    for ex in exercises:
        for p in ex.plan:
            if p.week == week:
                week_plan[ex.display_name] = p
    return week_plan