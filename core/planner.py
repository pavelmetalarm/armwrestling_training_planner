from typing import List, Dict

def get_week_plan(week_index: int) -> List[Dict]:
    """
    Returns a static weekly training plan (stub version).
    In future, the output will be dynamically generated.
    """
    return [
        {"day": "Monday", "exercises": ["wrist curl", "pronation strap"]},
        {"day": "Wednesday", "exercises": ["cupping", "hammer lift"]},
        {"day": "Friday", "exercises": ["radial flexion", "pull-ups"]},
    ]
