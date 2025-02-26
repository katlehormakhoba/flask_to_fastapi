# import unittest

# class TestSearchAPI(unittest.TestCase):
#     def test_1(self):
#         self.assertTrue(1 == 1)

# if __name__ == "__main__":
#     unittest.main(verbosity=2, exit=False)
try:
    print("Running tests...")
    # Your test logic here
    exit(0)  # Explicit success exit
except Exception as e:
    print(f"Error: {e}")
    exit(1)  # Explicit failure exit
