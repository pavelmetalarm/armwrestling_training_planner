import time
import argparse

def main(port):
    print(f"[Bot] Armwrestling training bot is running on port {port} (stub).")
    while True:
        time.sleep(60)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--port", type=int, default=8080, help="Port to bind the bot to")
    args = parser.parse_args()
    main(args.port)