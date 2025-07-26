namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Arrays;

    @EntryPoint()
    operation Main() : Unit {
        use q = Qubit();
        
        Message("=== Initial State ===");
        DisplayFormattedState("Initial |0⟩ state");
        
        H(q);
        Message("\n=== After Hadamard Gate ===");
        DisplayFormattedState("Superposition |+⟩ state");
        
        let result = M(q);
        Message($"\n=== After Measurement (Result: {result}) ===");
        DisplayFormattedState("Post-measurement state");
        
        Reset(q);
        Message("\n=== After Reset ===");
        DisplayFormattedState("Reset |0⟩ state");
    }
    
    operation DisplayFormattedState(title : String) : Unit {
        Message(title);
        Message("Basis | Amplitude      | Probability | Phase");
        Message("-----------------------------------------------");
        
        // Since we can't directly access amplitudes in Q#, 
        // we'll simulate the expected output based on known states
        SimulateStateDisplay();
    }
    
    operation SimulateStateDisplay() : Unit {
        // This is a workaround since Q# doesn't expose amplitude access directly
        // In a real scenario, DumpMachine() already shows this formatted output
        DumpMachine();
    }
}