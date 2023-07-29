def read_and_remove_duplicates(file_path):
    translation_map = {}
    with open(file_path) as f:
        lines = f.readlines()
        for line in lines:
            line = line.strip()
            if ':' not in line:
                print(f'Skipping line {line} as it does not contain ":"')
                continue
            arabic_name, roman_name = line.split(':')
            arabic_name = arabic_name.strip().strip("'")
            roman_name = roman_name.strip().strip("',")
            # In a dictionary, duplicate keys get overwritten
            translation_map[arabic_name] = roman_name
    return translation_map


def write_back_to_file(file_path, translation_map):
    with open(file_path, 'w') as f:
        for arabic_name, roman_name in translation_map.items():
            f.write(f"'{arabic_name}': '{roman_name}',\n")


if __name__ == "__main__":
    file_path = 'names.txt'  # replace 'your_file.txt' with your actual filename
    result = read_and_remove_duplicates(file_path)
    write_back_to_file(file_path, result)
