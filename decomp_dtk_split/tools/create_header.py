def create_cpp_header(header_name, content):
    header_content = f"#ifndef {header_name}\n#define {header_name}\n\n{content}\n\n#endif"

    with open(f"{header_name}.h", "w") as file:
        file.write(header_content)

if __name__ == "__main__":
    # Get input for macro guard name
    header_name = input("Enter the macro guard name: ")

    # Get input for header content
    print("Enter the content of the header file. Press Ctrl+D (or Ctrl+Z on Windows) to finish:")
    content_lines = []
    try:
        while True:
            line = input()
            content_lines.append(line)
    except EOFError:
        pass

    header_content = "\n".join(content_lines)

    # Create the C++ header file
    create_cpp_header(header_name, header_content)

    print(f"{header_name}.h created successfully.")
