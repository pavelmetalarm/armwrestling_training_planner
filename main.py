import time
from core.planner import get_week_plan

def main():
    print("[Bot] Armwrestling training bot is running (stub).")
    week_plan = get_week_plan(1)
    for name, load in week_plan.items():
        print(f"\n{name}: {load.sets} sets × {load.reps} reps @ {load.percent}% 1RM ({load.intensity})")

    while True:
        time.sleep(60)

if __name__ == "__main__":
    main()
