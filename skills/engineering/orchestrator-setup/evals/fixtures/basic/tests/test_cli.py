from tally.cli import total


def test_total(tmp_path):
    p = tmp_path / "n.txt"
    p.write_text("1\n2\n3\n")
    assert total(p) == 6
