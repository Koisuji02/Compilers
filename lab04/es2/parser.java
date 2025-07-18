
//----------------------------------------------------
// The following code was generated by CUP v0.11b beta 20140226
//----------------------------------------------------

import java_cup.runtime.*;
import java_cup.runtime.XMLElement;

/** CUP v0.11b beta 20140226 generated parser.
  */
@SuppressWarnings({"rawtypes"})
public class parser extends java_cup.runtime.lr_parser {

 public final Class getSymbolContainer() {
    return sym.class;
}

  /** Default constructor. */
  @Deprecated
  public parser() {super();}

  /** Constructor which sets the default scanner. */
  @Deprecated
  public parser(java_cup.runtime.Scanner s) {super(s);}

  /** Constructor which sets the default scanner. */
  public parser(java_cup.runtime.Scanner s, java_cup.runtime.SymbolFactory sf) {super(s,sf);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\050\000\002\002\004\000\002\002\004\000\002\003" +
    "\002\000\002\003\004\000\002\007\005\000\002\007\005" +
    "\000\002\010\003\000\002\010\006\000\002\010\010\000" +
    "\002\010\005\000\002\004\002\000\002\004\004\000\002" +
    "\005\004\000\002\005\007\000\002\005\012\000\002\005" +
    "\007\000\002\005\007\000\002\005\011\000\002\005\005" +
    "\000\002\011\005\000\002\011\010\000\002\006\003\000" +
    "\002\006\003\000\002\006\003\000\002\006\006\000\002" +
    "\006\005\000\002\006\005\000\002\006\005\000\002\006" +
    "\005\000\002\006\005\000\002\006\005\000\002\006\005" +
    "\000\002\006\005\000\002\006\005\000\002\006\005\000" +
    "\002\006\005\000\002\006\005\000\002\006\004\000\002" +
    "\006\004\000\002\006\005" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\136\000\022\002\uffff\022\uffff\033\uffff\034\uffff\035" +
    "\uffff\037\uffff\040\uffff\043\uffff\001\002\000\004\002\140" +
    "\001\002\000\022\002\ufff7\022\ufff7\033\010\034\007\035" +
    "\ufff7\037\ufff7\040\ufff7\043\ufff7\001\002\000\016\002\000" +
    "\022\030\035\035\037\033\040\031\043\027\001\002\000" +
    "\004\043\012\001\002\000\004\043\012\001\002\000\022" +
    "\002\ufffe\022\ufffe\033\ufffe\034\ufffe\035\ufffe\037\ufffe\040" +
    "\ufffe\043\ufffe\001\002\000\010\013\ufffb\015\ufffb\016\022" +
    "\001\002\000\006\013\015\015\014\001\002\000\004\043" +
    "\016\001\002\000\022\002\ufffd\022\ufffd\033\ufffd\034\ufffd" +
    "\035\ufffd\037\ufffd\040\ufffd\043\ufffd\001\002\000\010\013" +
    "\ufff8\015\ufff8\016\017\001\002\000\004\041\020\001\002" +
    "\000\004\017\021\001\002\000\006\013\ufff9\015\ufff9\001" +
    "\002\000\004\041\023\001\002\000\004\017\024\001\002" +
    "\000\006\013\ufffa\015\ufffa\001\002\000\006\013\026\015" +
    "\014\001\002\000\022\002\ufffc\022\ufffc\033\ufffc\034\ufffc" +
    "\035\ufffc\037\ufffc\040\ufffc\043\ufffc\001\002\000\006\010" +
    "\132\016\131\001\002\000\016\022\ufff7\023\ufff7\035\ufff7" +
    "\037\ufff7\040\ufff7\043\ufff7\001\002\000\004\020\116\001" +
    "\002\000\020\002\ufff6\022\ufff6\023\ufff6\035\ufff6\037\ufff6" +
    "\040\ufff6\043\ufff6\001\002\000\004\020\112\001\002\000" +
    "\004\013\111\001\002\000\004\020\036\001\002\000\016" +
    "\005\042\020\043\026\041\041\045\042\040\043\037\001" +
    "\002\000\042\004\uffea\005\uffea\006\uffea\007\uffea\011\uffea" +
    "\012\uffea\013\uffea\016\106\017\uffea\021\uffea\024\uffea\025" +
    "\uffea\027\uffea\030\uffea\031\uffea\032\uffea\001\002\000\040" +
    "\004\uffeb\005\uffeb\006\uffeb\007\uffeb\011\uffeb\012\uffeb\013" +
    "\uffeb\017\uffeb\021\uffeb\024\uffeb\025\uffeb\027\uffeb\030\uffeb" +
    "\031\uffeb\032\uffeb\001\002\000\016\005\042\020\043\026" +
    "\041\041\045\042\040\043\037\001\002\000\016\005\042" +
    "\020\043\026\041\041\045\042\040\043\037\001\002\000" +
    "\016\005\042\020\043\026\041\041\045\042\040\043\037" +
    "\001\002\000\034\004\057\005\046\006\054\007\052\011" +
    "\050\012\051\021\056\024\047\025\061\027\055\030\062" +
    "\031\060\032\053\001\002\000\040\004\uffec\005\uffec\006" +
    "\uffec\007\uffec\011\uffec\012\uffec\013\uffec\017\uffec\021\uffec" +
    "\024\uffec\025\uffec\027\uffec\030\uffec\031\uffec\032\uffec\001" +
    "\002\000\016\005\042\020\043\026\041\041\045\042\040" +
    "\043\037\001\002\000\016\005\042\020\043\026\041\041" +
    "\045\042\040\043\037\001\002\000\016\005\042\020\043" +
    "\026\041\041\045\042\040\043\037\001\002\000\016\005" +
    "\042\020\043\026\041\041\045\042\040\043\037\001\002" +
    "\000\016\005\042\020\043\026\041\041\045\042\040\043" +
    "\037\001\002\000\016\005\042\020\043\026\041\041\045" +
    "\042\040\043\037\001\002\000\016\005\042\020\043\026" +
    "\041\041\045\042\040\043\037\001\002\000\016\005\042" +
    "\020\043\026\041\041\045\042\040\043\037\001\002\000" +
    "\014\022\030\035\035\037\033\040\031\043\027\001\002" +
    "\000\016\005\042\020\043\026\041\041\045\042\040\043" +
    "\037\001\002\000\016\005\042\020\043\026\041\041\045" +
    "\042\040\043\037\001\002\000\016\005\042\020\043\026" +
    "\041\041\045\042\040\043\037\001\002\000\016\005\042" +
    "\020\043\026\041\041\045\042\040\043\037\001\002\000" +
    "\040\004\057\005\046\006\054\007\052\011\uffe3\012\uffe3" +
    "\013\uffe3\017\uffe3\021\uffe3\024\uffe3\025\uffe3\027\uffe3\030" +
    "\uffe3\031\uffe3\032\uffe3\001\002\000\040\004\057\005\046" +
    "\006\054\007\052\011\050\012\051\013\uffdf\017\uffdf\021" +
    "\uffdf\024\047\025\uffdf\027\055\030\062\031\060\032\053" +
    "\001\002\000\040\004\057\005\046\006\054\007\052\011" +
    "\uffe2\012\uffe2\013\uffe2\017\uffe2\021\uffe2\024\uffe2\025\uffe2" +
    "\027\uffe2\030\uffe2\031\uffe2\032\uffe2\001\002\000\040\004" +
    "\uffe8\005\uffe8\006\054\007\052\011\uffe8\012\uffe8\013\uffe8" +
    "\017\uffe8\021\uffe8\024\uffe8\025\uffe8\027\uffe8\030\uffe8\031" +
    "\uffe8\032\uffe8\001\002\000\022\002\ufff1\022\ufff1\023\ufff1" +
    "\035\ufff1\036\070\037\ufff1\040\ufff1\043\ufff1\001\002\000" +
    "\014\022\030\035\035\037\033\040\031\043\027\001\002" +
    "\000\022\002\ufff0\022\ufff0\023\ufff0\035\ufff0\036\ufff0\037" +
    "\ufff0\040\ufff0\043\ufff0\001\002\000\040\004\057\005\046" +
    "\006\054\007\052\011\050\012\051\013\uffe4\017\uffe4\021" +
    "\uffe4\024\uffe4\025\uffe4\027\uffe4\030\062\031\060\032\uffe4" +
    "\001\002\000\040\004\uffe6\005\uffe6\006\uffe6\007\uffe6\011" +
    "\uffe6\012\uffe6\013\uffe6\017\uffe6\021\uffe6\024\uffe6\025\uffe6" +
    "\027\uffe6\030\uffe6\031\uffe6\032\uffe6\001\002\000\040\004" +
    "\057\005\046\006\054\007\052\011\050\012\051\013\uffe1" +
    "\017\uffe1\021\uffe1\024\uffe1\025\uffe1\027\uffe1\030\062\031" +
    "\060\032\uffe1\001\002\000\040\004\uffe5\005\uffe5\006\uffe5" +
    "\007\uffe5\011\uffe5\012\uffe5\013\uffe5\017\uffe5\021\uffe5\024" +
    "\uffe5\025\uffe5\027\uffe5\030\uffe5\031\uffe5\032\uffe5\001\002" +
    "\000\040\004\057\005\046\006\054\007\052\011\uffde\012" +
    "\uffde\013\uffde\017\uffde\021\uffde\024\uffde\025\uffde\027\uffde" +
    "\030\uffde\031\uffde\032\uffde\001\002\000\040\004\057\005" +
    "\046\006\054\007\052\011\uffdd\012\uffdd\013\uffdd\017\uffdd" +
    "\021\uffdd\024\uffdd\025\uffdd\027\uffdd\030\uffdd\031\uffdd\032" +
    "\uffdd\001\002\000\040\004\057\005\046\006\054\007\052" +
    "\011\050\012\051\013\uffe0\017\uffe0\021\uffe0\024\uffe0\025" +
    "\uffe0\027\055\030\062\031\060\032\053\001\002\000\040" +
    "\004\uffe7\005\uffe7\006\054\007\052\011\uffe7\012\uffe7\013" +
    "\uffe7\017\uffe7\021\uffe7\024\uffe7\025\uffe7\027\uffe7\030\uffe7" +
    "\031\uffe7\032\uffe7\001\002\000\034\004\057\005\046\006" +
    "\054\007\052\011\050\012\051\021\103\024\047\025\061" +
    "\027\055\030\062\031\060\032\053\001\002\000\040\004" +
    "\uffda\005\uffda\006\uffda\007\uffda\011\uffda\012\uffda\013\uffda" +
    "\017\uffda\021\uffda\024\uffda\025\uffda\027\uffda\030\uffda\031" +
    "\uffda\032\uffda\001\002\000\040\004\uffdb\005\uffdb\006\054" +
    "\007\052\011\uffdb\012\uffdb\013\uffdb\017\uffdb\021\uffdb\024" +
    "\uffdb\025\uffdb\027\uffdb\030\uffdb\031\uffdb\032\uffdb\001\002" +
    "\000\040\004\uffdc\005\uffdc\006\uffdc\007\uffdc\011\uffdc\012" +
    "\uffdc\013\uffdc\017\uffdc\021\uffdc\024\uffdc\025\uffdc\027\uffdc" +
    "\030\uffdc\031\uffdc\032\uffdc\001\002\000\016\005\042\020" +
    "\043\026\041\041\045\042\040\043\037\001\002\000\034" +
    "\004\057\005\046\006\054\007\052\011\050\012\051\017" +
    "\110\024\047\025\061\027\055\030\062\031\060\032\053" +
    "\001\002\000\040\004\uffe9\005\uffe9\006\uffe9\007\uffe9\011" +
    "\uffe9\012\uffe9\013\uffe9\017\uffe9\021\uffe9\024\uffe9\025\uffe9" +
    "\027\uffe9\030\uffe9\031\uffe9\032\uffe9\001\002\000\022\002" +
    "\ufff5\022\ufff5\023\ufff5\035\ufff5\036\ufff5\037\ufff5\040\ufff5" +
    "\043\ufff5\001\002\000\016\005\042\020\043\026\041\041" +
    "\045\042\040\043\037\001\002\000\034\004\057\005\046" +
    "\006\054\007\052\011\050\012\051\021\114\024\047\025" +
    "\061\027\055\030\062\031\060\032\053\001\002\000\014" +
    "\022\030\035\035\037\033\040\031\043\027\001\002\000" +
    "\022\002\ufff2\022\ufff2\023\ufff2\035\ufff2\036\ufff2\037\ufff2" +
    "\040\ufff2\043\ufff2\001\002\000\004\043\117\001\002\000" +
    "\006\016\120\021\121\001\002\000\016\005\042\020\043" +
    "\026\041\041\045\042\040\043\037\001\002\000\004\013" +
    "\122\001\002\000\022\002\ufff4\022\ufff4\023\ufff4\035\ufff4" +
    "\036\ufff4\037\ufff4\040\ufff4\043\ufff4\001\002\000\034\004" +
    "\057\005\046\006\054\007\052\011\050\012\051\017\124" +
    "\024\047\025\061\027\055\030\062\031\060\032\053\001" +
    "\002\000\004\021\125\001\002\000\004\013\126\001\002" +
    "\000\022\002\ufff3\022\ufff3\023\ufff3\035\ufff3\036\ufff3\037" +
    "\ufff3\040\ufff3\043\ufff3\001\002\000\016\022\030\023\130" +
    "\035\035\037\033\040\031\043\027\001\002\000\022\002" +
    "\uffef\022\uffef\023\uffef\035\uffef\036\uffef\037\uffef\040\uffef" +
    "\043\uffef\001\002\000\016\005\042\020\043\026\041\041" +
    "\045\042\040\043\037\001\002\000\016\005\042\020\043" +
    "\026\041\041\045\042\040\043\037\001\002\000\034\004" +
    "\057\005\046\006\054\007\052\011\050\012\051\013\uffee" +
    "\024\047\025\061\027\055\030\062\031\060\032\053\001" +
    "\002\000\034\004\057\005\046\006\054\007\052\011\050" +
    "\012\051\017\135\024\047\025\061\027\055\030\062\031" +
    "\060\032\053\001\002\000\004\010\136\001\002\000\016" +
    "\005\042\020\043\026\041\041\045\042\040\043\037\001" +
    "\002\000\034\004\057\005\046\006\054\007\052\011\050" +
    "\012\051\013\uffed\024\047\025\061\027\055\030\062\031" +
    "\060\032\053\001\002\000\004\002\001\001\002" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\136\000\006\002\003\003\004\001\001\000\002\001" +
    "\001\000\006\004\005\007\010\001\001\000\006\005\031" +
    "\011\033\001\001\000\004\010\024\001\001\000\004\010" +
    "\012\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\004" +
    "\004\126\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\004" +
    "\006\043\001\001\000\002\001\001\000\002\001\001\000" +
    "\004\006\104\001\001\000\004\006\103\001\001\000\004" +
    "\006\101\001\001\000\002\001\001\000\002\001\001\000" +
    "\004\006\100\001\001\000\004\006\077\001\001\000\004" +
    "\006\076\001\001\000\004\006\075\001\001\000\004\006" +
    "\074\001\001\000\004\006\073\001\001\000\004\006\072" +
    "\001\001\000\004\006\071\001\001\000\006\005\066\011" +
    "\033\001\001\000\004\006\065\001\001\000\004\006\064" +
    "\001\001\000\004\006\063\001\001\000\004\006\062\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\006\005\070\011" +
    "\033\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\004\006\106\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\004\006\112\001" +
    "\001\000\002\001\001\000\006\005\114\011\033\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\004\006\122\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\006\005\031\011\033\001\001\000\002" +
    "\001\001\000\004\006\133\001\001\000\004\006\132\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\004\006\136\001\001\000\002\001\001\000\002\001" +
    "\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$parser$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$parser$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$parser$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 0;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}


  /** User initialization code. */
  public void user_init() throws java.lang.Exception
    {
 Tree = new DisegnaAlbero();   }public static DisegnaAlbero Tree;

  /** Scan to get the next Symbol. */
  public java_cup.runtime.Symbol scan()
    throws java.lang.Exception
    {
 Symbol s=_scanner.next_token(); Tree.push(s.toString(), 0); return s;   }


    public void report_error(String message, Object info) {
        System.err.print("ERROR: Syntax error");
        if (info instanceof Symbol)
            if (((Symbol)info).left != -1){
                int line = (((Symbol)info).left)+1;
                int column = (((Symbol)info).right)+1;
                System.err.print(" (linea "+line+", colonna "+column+"): ");
            } else System.err.print(": ");
        else System.err.print(": ");
    }


/** Cup generated class to encapsulate user supplied action code.*/
@SuppressWarnings({"rawtypes", "unchecked", "unused"})
class CUP$parser$actions {
  private final parser parser;

  /** Constructor */
  CUP$parser$actions(parser parser) {
    this.parser = parser;
  }

  /** Method 0 with the actual generated action code for actions 0 to 300. */
  public final java_cup.runtime.Symbol CUP$parser$do_action_part00000000(
    int                        CUP$parser$act_num,
    java_cup.runtime.lr_parser CUP$parser$parser,
    java.util.Stack            CUP$parser$stack,
    int                        CUP$parser$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$parser$result;

      /* select the action based on the action number */
      switch (CUP$parser$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // $START ::= program EOF 
            { 
              Object RESULT =null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).right;
		Object start_val = (Object)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-1)).value;
		RESULT = start_val;
              CUP$parser$result = parser.getSymbolFactory().newSymbol("$START",0, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          /* ACCEPT */
          CUP$parser$parser.done_parsing();
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // program ::= declaration_list statement_list 
            { parser.Tree.reduce(2,"program",0);
              Object RESULT =null;
		 System.out.println("Success!!!"); 
              CUP$parser$result = parser.getSymbolFactory().newSymbol("program",0, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // declaration_list ::= 
            { parser.Tree.reduce(0,"declaration_list",1);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("declaration_list",1, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // declaration_list ::= declaration_list declaration 
            { parser.Tree.reduce(2,"declaration_list",1);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("declaration_list",1, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // declaration ::= INT_TYPE id_list SEMICOLON 
            { parser.Tree.reduce(3,"declaration",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("declaration",5, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // declaration ::= DOUBLE_TYPE id_list SEMICOLON 
            { parser.Tree.reduce(3,"declaration",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("declaration",5, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // id_list ::= ID 
            { parser.Tree.reduce(1,"id_list",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("id_list",6, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // id_list ::= ID SQUARE_OPEN INT SQUARE_CLOSE 
            { parser.Tree.reduce(4,"id_list",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("id_list",6, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // id_list ::= id_list COMMA ID SQUARE_OPEN INT SQUARE_CLOSE 
            { parser.Tree.reduce(6,"id_list",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("id_list",6, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-5)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 9: // id_list ::= id_list COMMA ID 
            { parser.Tree.reduce(3,"id_list",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("id_list",6, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 10: // statement_list ::= 
            { parser.Tree.reduce(0,"statement_list",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement_list",2, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 11: // statement_list ::= statement_list statement 
            { parser.Tree.reduce(2,"statement_list",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement_list",2, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 12: // statement ::= assignment SEMICOLON 
            { parser.Tree.reduce(2,"statement",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 13: // statement ::= PRINT ROUND_OPEN ID ROUND_CLOSE SEMICOLON 
            { parser.Tree.reduce(5,"statement",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-4)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 14: // statement ::= PRINT ROUND_OPEN ID SQUARE_OPEN expression SQUARE_CLOSE ROUND_CLOSE SEMICOLON 
            { parser.Tree.reduce(8,"statement",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-7)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 15: // statement ::= WHILE ROUND_OPEN expression ROUND_CLOSE statement 
            { parser.Tree.reduce(5,"statement",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-4)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 16: // statement ::= IF ROUND_OPEN expression ROUND_CLOSE statement 
            { parser.Tree.reduce(5,"statement",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-4)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 17: // statement ::= IF ROUND_OPEN expression ROUND_CLOSE statement ELSE statement 
            { parser.Tree.reduce(7,"statement",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-6)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 18: // statement ::= BRACE_OPEN statement_list BRACE_CLOSE 
            { parser.Tree.reduce(3,"statement",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("statement",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 19: // assignment ::= ID EQUAL expression 
            { parser.Tree.reduce(3,"assignment",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("assignment",7, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 20: // assignment ::= ID SQUARE_OPEN expression SQUARE_CLOSE EQUAL expression 
            { parser.Tree.reduce(6,"assignment",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("assignment",7, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-5)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 21: // expression ::= INT 
            { parser.Tree.reduce(1,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 22: // expression ::= DOUBLE 
            { parser.Tree.reduce(1,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 23: // expression ::= ID 
            { parser.Tree.reduce(1,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 24: // expression ::= ID SQUARE_OPEN expression SQUARE_CLOSE 
            { parser.Tree.reduce(4,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 25: // expression ::= expression PLUS expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 26: // expression ::= expression MINUS expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 27: // expression ::= expression STAR expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 28: // expression ::= expression DASH expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 29: // expression ::= expression EQ expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 30: // expression ::= expression LEQ expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 31: // expression ::= expression GEQ expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 32: // expression ::= expression NEQ expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 33: // expression ::= expression AND expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 34: // expression ::= expression OR expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 35: // expression ::= expression MAJOR expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 36: // expression ::= expression MINOR expression 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 37: // expression ::= NOT expression 
            { parser.Tree.reduce(2,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 38: // expression ::= MINUS expression 
            { parser.Tree.reduce(2,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 39: // expression ::= ROUND_OPEN expression ROUND_CLOSE 
            { parser.Tree.reduce(3,"expression",0);
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("expression",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number "+CUP$parser$act_num+"found in internal parse table");

        }
    } /* end of method */

  /** Method splitting the generated action code into several parts. */
  public final java_cup.runtime.Symbol CUP$parser$do_action(
    int                        CUP$parser$act_num,
    java_cup.runtime.lr_parser CUP$parser$parser,
    java.util.Stack            CUP$parser$stack,
    int                        CUP$parser$top)
    throws java.lang.Exception
    {
              return CUP$parser$do_action_part00000000(
                               CUP$parser$act_num,
                               CUP$parser$parser,
                               CUP$parser$stack,
                               CUP$parser$top);
    }
}

}
