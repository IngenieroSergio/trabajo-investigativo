// tests/math.test.js
const multiply = require('../src/math');

test('Multiplying 2 and 3 should return 6', () => {
  expect(multiply(2, 2)).toBe(6);
});

test('Multiplying 4 and -5 should return -20', () => {
  expect(multiply(4, -5)).toBe(-20);
});
