// This example demonstrates the definition and initialization of a "struct" in Leo.
program greetings.aleo {
    // The "greetings" struct.
    struct greetings {
        // A struct member named "first" with type "field".
        first: field,
        // A struct member named "second" with type "field".
        second: field,
        //A struct member named "third" with type "field".
        third: field,
    }

    // The "main" function of this Leo program takes a "greetings" struct type as input.
    // To see how to input variable "m" is passed in open up `inputs/greetings.in`.
    transition main(m: greetings) -> field {

        // 1. Define the "greetings" type.
        // 2. Use brackets `{ }` to enclose the struct members.
        // 3. Define each struct member `name : value`.
        let m1: greetings = greetings {
            first: m.first,
            second: m.second,
            third: m.third,
        };

        // Access the members of a struct with dot syntax.
        // `struct_name.member`
        return m1.first + m1.second + m1.third;
    }
}