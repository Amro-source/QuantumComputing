namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Main() : Result {
        use q = Qubit();
        
        Message("=== Initial State ===");
        DumpMachine(); // This already shows your desired format!
        
        Message("\n=== After Hadamard Gate ===");
        H(q);
        DumpMachine(); // This already shows your desired format!
        
        Message("\n=== After Measurement ===");
        let randomBit = M(q);
        Message($"Measurement result: {randomBit}");
        DumpMachine(); // This already shows your desired format!
        
        Message("\n=== After Reset ===");
        Reset(q);
        DumpMachine(); // This already shows your desired format!
        
        return randomBit;
    }
}