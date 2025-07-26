namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Main() : Result {
        use q = Qubit();
        
        Message("Initialized qubit:");
        DumpMachine();
        
        H(q);
        Message("After H gate:");
        DumpMachine();
        
        let result = M(q);
        Message($"Measurement result: {result}");
        DumpMachine();
        
        Reset(q);
        Message("After reset:");
        DumpMachine();
        
        return result;
    }
}