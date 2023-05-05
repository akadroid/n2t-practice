import sys

class Parser:
    def __init__(self, filename):
        self.file = open(f"{filename}.asm", "wb")
        self.instruction = ""
    
    def hasMoreLines(line):
        return line
    
    def advance(self):
        line = self.file.readline().split("//")[0]
        self.instruction = line.strip()

    def instructionType(instruction):
        if (instruction[0] == '@'):
            return "A_INSTRUCTION"
        if (instruction[0] == '(' and instruction[-1] == ')'):
            return "L_INSTRUCTION"
        return "C_INSTRUCTION"
    
    def symbol(instruction):
        return instruction.strip("@()")
    
    def dest(self):
        if (self.instruction):
            return self.instruction[0]
        return ""
    
    def comp(self):
        if (self.instruction):
            line = self.instruction.split(';')[0]
            return line[2:]
        return ""
    
    def jump(self):
        if (self.instruction):
            return self.instruction.split(';')[1]
        return ""
    
class Code:
    pass

class SymbolTable:
    def __init__(self):
        self.symtable = {'R0': 0, 'R1': 1, 'R2': 2, 'R3': 3, 'R4': 4,
                         'R5': 5, 'R6': 6, 'R7': 7, 'R8': 8, 'R9': 9,
                         'R10': 10, 'R11': 11, 'R12': 12, 'R13': 13,
                         'R14': 14, 'R15': 15,
                         'SCREEN': 16384, 'KBD': 24576, 'SP': 0, 'LCL': 1,
                         'ARG': 2, 'THIS': 3, 'THAT': 4, 'LOOP': 4, 'STOP': 18}

class HackAssembler:
    pass

def main():
    pass
