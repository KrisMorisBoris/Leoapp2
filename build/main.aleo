program greetings.aleo;

struct greetings:
    first as field;
    second as field;
    third as field;


function main:
    input r0 as greetings.private;
    cast r0.first r0.second r0.third into r1 as greetings;
    add r1.first r1.second into r2;
    add r2 r1.third into r3;
    output r3 as field.private;
