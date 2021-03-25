
morse_dict = {
    '0': '-----',
    '1': '.----',
    '2': '..---',
    '3': '...--',
    '4': '....-',
    '5': '.....',
    '6': '-....',
    '7': '--...',
    '8': '---..',
    '9': '----.',
    'A': '.-',
    'B': '-...',
    'C': '-.-.',
    'D': '-..',
    'E': '.',
    'F': '..-.',
    'G': '--.',
    'H': '....',
    'I': '..',
    'J': '.---',
    'K': '-.-',
    'L': '.-..',
    'M': '--',
    'N': '-.',
    'O': '---',
    'P': '.--.',
    'Q': '--.-',
    'R': '.-.',
    'S': '...',
    'T': '-',
    'U': '..-',
    'V': '...-',
    'W': '.--',
    'X': '-..-',
    'Y': '-.--',
    'Z': '--..',
}

# Morse values are encoded as a uint16_t containing 8 2-bit subfields. Each subfield corresponds to the following:
# 00 - End of character
# 01 - Dot (.)
# 10 - Dash (-)
# 11 - Reserved
def encode_value(morse_str):
    value = 0
    for i, c in enumerate(morse_str):
        # decode the character into the bitfield format
        decoded_char = 1 if c == '.' else 2
        value |= decoded_char << (i*2)
    return value

with open('morse_data.inc', 'w') as inc_file:
    for k, v in morse_dict.items():
        print(k, v)

        encoded_val = encode_value(v)
        inc_file.write(f'0x{encoded_val:08x}, // {k}\n')


