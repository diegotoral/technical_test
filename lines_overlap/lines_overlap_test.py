import unittest

from lines_overlap import colinear_lines_overlap

class LinesOverlapTest(unittest.TestCase):
    def test_raises_error_with_invalid_input(self):
        a = None
        b = ('foo', 'bar')

        with self.assertRaises(TypeError):
            colinear_lines_overlap(a, b)

    def test_accepts_lists_as_input(self):
        a = [1, 3]
        b = [2, 4]

        self.assertTrue(colinear_lines_overlap(a, b))

    def test_is_correct_for_positive_lines_that_overlap(self):
        a = (1, 3)
        b = (2, 5)

        self.assertTrue(colinear_lines_overlap(a, b))

    def test_is_correct_for_positive_lines_that_dont_overlap(self):
        a = (1, 3)
        b = (4, 5)

        self.assertFalse(colinear_lines_overlap(a, b))

    def test_is_correct_for_positive_lines_where_a_contains_b(self):
        a = (1, 5)
        b = (2, 3)

        self.assertTrue(colinear_lines_overlap(a, b))

    def test_is_correct_negative_lines_that_overlap(self):
        a = (-1, -5)
        b = (-2, -6)

        self.assertTrue(colinear_lines_overlap(a, b))


    def test_is_correct_for_line_ranging_negative_and_positive_positions(self):
        a = (-5, 5)
        b = (-6, -1)

        self.assertTrue(colinear_lines_overlap(a, b))

if __name__ == '__main__':
    unittest.main()
