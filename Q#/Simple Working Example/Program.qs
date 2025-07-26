namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Main() : Unit {
        use q = Qubit();
        H(q);
        let result = M(q);
        Reset(q);
        
        // Display the result
        Message($"Quantum result: {result}");
        
        // Convert to numeric value
        let numericValue = result == Zero ? 0 | 1;
        Message($"Numeric value: {numericValue}");
    }
}