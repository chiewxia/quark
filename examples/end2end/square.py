# Squares stuff

import sys
import time

sys.path.append("./out")

from importable import Queue


def main():
    q = Queue("http://localhost:8080/simple")
    tracked = set()
    while True:
        time.sleep(0.25)

        item = q.pop()
        if not item:
            continue

        pieces = item.split(":")
        if pieces[0] in tracked:
            if pieces[1] == "done":
                tracked.remove(pieces[0])
            else:
                value = int(pieces[1])
                q.push("squared:" + pieces[0] + ":" + str(value * value))
        elif pieces[0] == "square":
            tracked.add(pieces[1])


if __name__ == '__main__':
    main()
