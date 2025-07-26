namespace QuantumProgram {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Convert;

    operation ResultToInt(result : Result) : Int {
    return result == Zero ? 0 | 1;
}

    @EntryPoint()
operation GetRandomBitAsInt() : Int {
    use q = Qubit();
    H(q);
    let result = M(q);
    Reset(q);
    return ResultToInt(result);
 }

}