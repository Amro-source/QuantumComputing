namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation Main() : Result {
     
     
     
    use q = Qubit();
    H(q);                           // Put in superposition
    let randomBit = M(q);           // Measure -> collapses to Zero or One
    
    // You can use the result like a classical bit:
    if randomBit == Zero {
        Message("Got bit value: 0");
    } else {
        Message("Got bit value: 1");
    }
    
    Reset(q);
    return randomBit;               // Returns Zero or One
        
       
    }
}