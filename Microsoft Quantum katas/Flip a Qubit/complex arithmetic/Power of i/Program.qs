namespace Kata {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    function PowersOfI(n : Int) : Int {
        // Replace the return values with correct answers.
        if n % 4 == 0 {
            return 1;
        } else {
            return -1;
        }
    }

    @EntryPoint()
    operation RunPowersOfI() : Unit {
        Message("Testing PowersOfI function:");
        for i in 0..7 {
            let result = PowersOfI(i);
            Message($"PowersOfI({i}) = {result}");
        }
    }
}