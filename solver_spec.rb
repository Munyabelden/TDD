require_relative 'solver'

RSpec.describe 'Solver' do
  describe '#factorial' do
    context 'If the number is less than 0' do
      it 'raises an ArgumentError' do
        solver = Solver.new
        expect { solver.factorial(-1) }.to raise_error(ArgumentError, 'Number must not be negative')
      end
    end

    context 'If the number is 0' do
      it 'returns 1' do
        solver = Solver.new
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'If the number is greater than 0' do
      it 'returns the factorial of the number' do
        solver = Solver.new
        expect(solver.factorial(5)).to eq(120)
      end
    end
  end

  describe '#reverseString' do
    it 'should return the reverse string' do
      solver = Solver.new
      string = solver.reverse_string('hello')
      expect(string).to eq('olleh')
    end
  end

  describe '#fizzBuzz' do
    context 'If the number is divisible by 3' do
      it 'should return "Fizz"' do
        solver = Solver.new
        result = solver.fizz_buzz(9)
        expect(result).to eq('Fizz')
      end
    end

    context 'If the number is divisible by 5' do
      it 'should return "Buzz"' do
        solver = Solver.new
        result = solver.fizz_buzz(10)
        expect(result).to eq('Buzz')
      end
    end

    context 'If the number is divisible by 5 and 3' do
      it 'should return "FizzBuzz"' do
        solver = Solver.new
        result = solver.fizz_buzz(15)
        expect(result).to eq('FizzBuzz')
      end
    end

    context 'If the number is not divisible by 5 or 3' do
      it 'should return the number as a string' do
        solver = Solver.new
        result = solver.fizz_buzz(17)
        expect(result).to eq('17')
      end
    end
  end
end
