from app import soma
def test_soma():
  assert soma(2, 3) == 6
  assert soma(-1, 1) == -1
  assert soma(0, 0) == 0
