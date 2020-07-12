import sys
import string
d = {'A': 'e', 'B': 'bI', 'C': 'sI', 'D': 'dI', 'E': 'I', 'F': 'eP', 'G': 'jI', 'H': 'eca', 'I': 'AI', 'J': 'je', 'K': 'ke', 'L': 'ela', 'M': 'ema',
     'N': 'ena', 'O': 'o', 'P': 'pI', 'Q': 'kyu', 'R': 'Ara', 'S': 'esa', 'T': 'tI', 'U': 'yu', 'V': 'vI', 'W': 'dabalyu', 'X': 'eksa', 'Y': 'vAI', 'Z': 'jZeda'}


def convert(x):
    return "".join([d[c] for c in x])


f1 = open(sys.argv[2], 'w')


def main():
    with open(sys.argv[1], 'r') as f:
        for line in f:
            for word in line.split():
                if not word.isupper():
                    print(word+" is written in lower/mixed case alphabets.")
                    continue
                f1.write("(eng_word-hin_word %s\t%s)\n" %
                         (word, convert(word)))


if __name__ == '__main__':
    main()
