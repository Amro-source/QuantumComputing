namespace Kata {
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Intrinsic;

    function ComplexAdd(x : Complex, y : Complex) : Complex {
        // Add real parts and imaginary parts separately
        return Complex(x::Real + y::Real, x::Imag + y::Imag);
    }

    @EntryPoint()
    operation RunComplexAdd() : Unit {
        let x = Complex(3.0, 4.0);  // 3 + 4i
        let y = Complex(1.0, 2.0);  // 1 + 2i
        let result = ComplexAdd(x, y);
        Message($"({x::Real} + {x::Imag}i) + ({y::Real} + {y::Imag}i) = {result::Real} + {result::Imag}i");
    }
}