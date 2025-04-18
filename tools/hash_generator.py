import hashlib

def generate_hash():
    print("Select hash type (md5, sha256, sha1): ")
    hash_type = input().lower()

    if hash_type not in ['md5', 'sha256', 'sha1']:
        print("Invalid hash type")
        return

    print("Enter the string to hash: ")
    string_to_hash = input()

    if hash_type == 'md5':
        hash_object = hashlib.md5(string_to_hash.encode())
    elif hash_type == 'sha256':
        hash_object = hashlib.sha256(string_to_hash.encode())
    elif hash_type == 'sha1':
        hash_object = hashlib.sha1(string_to_hash.encode())

    print(f"The {hash_type} hash of the string is: {hash_object.hexdigest()}")

generate_hash()
