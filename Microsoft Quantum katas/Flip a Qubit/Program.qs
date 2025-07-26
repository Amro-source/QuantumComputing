namespace Kata {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Measurement;

    operation FlipQubit(q : Qubit) : Unit is Adj + Ctl {
        X(q);
    }

    @EntryPoint()
    operation RunFlipQubit() : Unit {
        use qubit = Qubit();
        Message("Initial state: |0⟩");
        
        FlipQubit(qubit);
        Message("After flip: |1⟩");
        
        Reset(qubit);
    }
}