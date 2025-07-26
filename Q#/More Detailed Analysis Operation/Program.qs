namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Canon;

    @EntryPoint()
    operation Main() : Unit {
        use q = Qubit();
        
        Message("Step 1: Initial qubit state");
        DisplayQuantumStateInfo("Initial |0⟩ state");
        
        H(q);
        Message("\nStep 2: After applying Hadamard gate");
        DisplayQuantumStateInfo("Superposition state |+⟩");
        
        let measurementResult = M(q);
        Message($"\nStep 3: After measurement (result: {measurementResult})");
        DisplayQuantumStateInfo("Post-measurement state");
        
        Reset(q);
        Message("\nStep 4: After reset");
        DisplayQuantumStateInfo("Reset to |0⟩ state");
    }
    
    operation DisplayQuantumStateInfo(title : String) : Unit {
        Message($"--- {title} ---");
        Message("Quantum state visualization:");
        DumpMachine();
        
        // Additional analysis you can do:
        Message("Additional information:");
        Message("- Basis states show possible measurement outcomes");
        Message("- Amplitudes determine probability amplitudes");
        Message("- Probabilities = |amplitude|²");
        Message("- Phase affects quantum interference");
        Message("----------------------------------------");
    }
}