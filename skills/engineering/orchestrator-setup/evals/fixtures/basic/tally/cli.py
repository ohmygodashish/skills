import sys


def total(path):
    with open(path) as f:
        return sum(float(line) for line in f if line.strip())


if __name__ == "__main__":
    print(total(sys.argv[1]))
