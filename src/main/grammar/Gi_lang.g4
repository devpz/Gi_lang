grammar Gi_lang;

prog: stat*;

stat: read | print | stringConcat |assign | assignArr | assignString | if;


if: IF '(' ifCondition ')' OPEN_BRACKET blockif CLOSE_BRACKET;

ifCondition: value condition value;

comparisonOperand: INT | REAL | ID;

blockif: stat*;

condition: (EQUAL | NOT_EQUAL | GREATER_EQ | LESSER_EQ | GREATER | LESSER);


assign: ID '=' expr0 ';';
assignArr: ID '=' '{' ((INT|REAL)',')* (INT|REAL)? '}' ';';
assignString: ID '=' STRING ';';

//expr: value | add | sub | mul| div;
expr0: expr1            #single0
    | expr1 ADD expr1   #add
    | expr1 SUB expr1   #sub
;

expr1:  expr2			    #single1
      | expr2 MUL expr2	    #mul
      | expr2 DIV expr2	    #div
;

expr2:   value
       | '(' expr0 ')'
;

stringConcat: ID '=' stringValue '.concat(' stringValue ')' ';';
stringValue: STRING|ID;
//    | arrayExpr;

value: ID | INT | REAL | arrValue;
arrValue: ID '[' INT ']';

print: PRINT '(' value ')'';';
read: READ '(' ID ')'';';

//add: value ADD expr;
//sub: value SUB expr;
//mul: value MUL expr;
//div: value DIV expr;


ADD: '+';
SUB: '-';
MUL: '*';
DIV: '/';

PRINT: 'print';
END_STAT: ';';
READ: 'read';
INT: [0-9]+;
IF: 'if';
EQUAL: '==';
NOT_EQUAL: '!=';
GREATER_EQ: '>=';
LESSER_EQ: '<=';
GREATER: '>';
LESSER: '<';

FOR: 'for';
OPEN_BRACKET: '{';
CLOSE_BRACKET: '}';
REAL: INT '.' INT;
STRING :  '"' ( ~('\\'|'"') )* '"';
ID: [a-zA-Z0-9]+;
WS : [ \t\r\n]+ -> skip;