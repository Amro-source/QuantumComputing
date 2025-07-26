namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Arrays;

    @EntryPoint()
    operation Main() : Unit {
        use q = Qubit();
        
        Message("=== Initial State ===");
        AnalyzeQubitState();
        
        Message("\n=== After Hadamard Gate ===");
        H(q);
        AnalyzeQubitState();
        
        Message("\n=== After Measurement ===");
        let result = M(q);
        Message($"Measurement result: {result}");
        Message($"Numeric value: {result == Zero ? 0 | 1}");
        AnalyzeQubitState();
        
        Reset(q);
        Message("\n=== After Reset ===");
        AnalyzeQubitState();
    }
    
    operation AnalyzeQubitState() : Unit {
        // DumpMachine shows the visualization
        DumpMachine();
        
        // Get the quantum state information programmatically
        Message("State analysis:");
        
        // Note: Direct access to amplitudes requires advanced techniques
        // For educational purposes, we can infer from DumpMachine output
        // In practice, you'd use the DumpMachine output to understand the state
    }
}