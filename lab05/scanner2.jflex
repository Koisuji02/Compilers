import java_cup.runtime.*;
import java.util.*;

init with {:
    symbolTable = new HashMap<String, Object>();
:};

parser code {:
    public HashMap<String, Object> symbolTable;

    public void report_error(String message, Object info){
        System.err.print("ERROR: Syntax error");
        if (info instanceof Symbol){
            if (((Symbol)info).left != -1){
                int line = ((Symbol)info).left + 1;
                int column = ((Symbol)info).right + 1;
                System.err.print(" (linea " + line + ", colonna " + column + "): " + message);
            } else {
                System.err.print(": " + message);
            }
        } else {
            System.err.print(": " + message);
        }
    }

    public void syntax_error(Symbol s){
        report_error("Syntax error", s);
    }

    private double getScalarValue(Object val) {
        if (val instanceof Double) return (Double) val;
        if (val instanceof String) {
            Object v = symbolTable.get(val);
            if (v instanceof Double) return (Double)v;
        }
        throw new RuntimeException("Expected scalar value");
    }

    private double[] getVectorValue(Object val) {
        if (val instanceof double[]) return (double[]) val;
        if (val instanceof String) {
            Object v = symbolTable.get(val);
            if (v instanceof double[]) return (double[]) v;
        }
        throw new RuntimeException("Expected vector value");
    }
:};

// TERMINAL SYMBOLS
terminal Double NUM;
terminal MINUS, PLUS, PER, DIV, EQ, POW, DOT, SEM, INT, SO, SC, COM;
terminal Character LOW, UPP;

// NON-TERMINAL SYMBOLS
non terminal prog, row_list, row, row_elem;
non terminal Object scalar_expr, vector_expr;
non terminal Object scalar_value, vector_value;
non terminal assignment;

// PRECEDENCE
precedence left PLUS, MINUS;
precedence left PER, DIV;
precedence right POW;
precedence right UMINUS;

start with prog;

// PROGRAMMA
prog ::= row_list INT;

row_list ::= row_list row | row;

row ::= row_elem SEM;

row_elem ::= assignment {: /* handled in assignment rule */ :}
           | scalar_expr:e {: System.out.println("scalar expression: " + e); :}
           | vector_expr:v {: 
                double[] vec = (double[]) v;
                System.out.println("vector expression: [" + vec[0] + ", " + vec[1] + "]");
             :};

// ====================== ASSEGNAMENTO =====================
assignment ::= LOW:l EQ scalar_expr:e {: 
                    parser.symbolTable.put(l, e);
                    System.out.println("assignment: " + e); 
                :}
            | UPP:L EQ vector_expr:v {: 
                    parser.symbolTable.put(L, v);
                    double[] vec = (double[]) v;
                    System.out.println("assignment: [" + vec[0] + ", " + vec[1] + "]");
                :};

// ====================== ESPRESSIONI SCALARI =====================
scalar_expr ::= scalar_expr PLUS scalar_expr {: RESULT = (Double) $1 + (Double) $3; :}
              | scalar_expr MINUS scalar_expr {: RESULT = (Double) $1 - (Double) $3; :}
              | scalar_expr PER scalar_expr {: RESULT = (Double) $1 * (Double) $3; :}
              | scalar_expr DIV scalar_expr {: RESULT = (Double) $1 / (Double) $3; :}
              | scalar_expr POW scalar_expr {: RESULT = Math.pow((Double)$1, (Double)$3); :}
              | MINUS scalar_expr %prec UMINUS {: RESULT = -((Double) $2); :}
              | scalar_value;

// ====================== VALORI SCALARI =====================
scalar_value ::= NUM:n {: RESULT = n; :}
               | LOW:l {: 
                    Object val = parser.symbolTable.get(l);
                    if (val instanceof Double) RESULT = val;
                    else throw new RuntimeException("Scalar variable " + l + " not assigned to scalar");
                :}
               | '(' scalar_expr:e ')' {: RESULT = e; :};

// ====================== ESPRESSIONI VETTORIALI =====================
vector_expr ::= SO scalar_expr:a COM scalar_expr:b SC {: 
                    RESULT = new double[] { (Double)a, (Double)b }; 
               :}
              | vector_expr PLUS vector_expr {: 
                    double[] v1 = (double[]) $1;
                    double[] v2 = (double[]) $3;
                    RESULT = new double[] { v1[0]+v2[0], v1[1]+v2[1] };
               :}
              | vector_expr MINUS vector_expr {: 
                    double[] v1 = (double[]) $1;
                    double[] v2 = (double[]) $3;
                    RESULT = new double[] { v1[0]-v2[0], v1[1]-v2[1] };
               :}
              | vector_expr DOT vector_expr {: 
                    double[] v1 = (double[]) $1;
                    double[] v2 = (double[]) $3;
                    RESULT = v1[0]*v2[0] + v1[1]*v2[1];  // DOT → scalar
               :}
              | scalar_expr:s PER vector_expr:v {: 
                    double[] vec = (double[]) v;
                    RESULT = new double[] { s*vec[0], s*vec[1] };
               :}
              | vector_expr:v PER scalar_expr:s {: 
                    double[] vec = (double[]) v;
                    RESULT = new double[] { s*vec[0], s*vec[1] };
               :}
              | vector_expr:v DIV scalar_expr:s {: 
                    double[] vec = (double[]) v;
                    RESULT = new double[] { vec[0]/s, vec[1]/s };
               :}
              | UPP:V {: 
                    Object val = parser.symbolTable.get(V);
                    if (val instanceof double[]) RESULT = val;
                    else throw new RuntimeException("Vector variable " + V + " not assigned to vector");
               :};
