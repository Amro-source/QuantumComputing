namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Main() : Int {
        use qubits = Qubit[3];
        
        // Apply H gate to each qubit
        for qubit in qubits {
            H(qubit);
        }
        
        Message("The qubit register in a uniform superposition: ");
        DumpMachine();
        
        // Measure all qubits
        mutable results = new Result[0];
        for qubit in qubits {
            set results += [M(qubit)];
        }
        
        Message("Measuring the qubits collapses the superposition to a basis state.");
        DumpMachine();
        ResetAll(qubits);
        return ResultArrayAsInt(results);
    }
}