
//----------------------------------------------------
// The following code was generated by CUP v0.11b beta 20140226
//----------------------------------------------------

/** CUP generated class containing symbol constants. */
public class sym {
  /* terminals */
  public static final int LOW = 3;
  public static final int PLUS = 6;
  public static final int INT = 13;
  public static final int RO = 17;
  public static final int COM = 16;
  public static final int EXP = 10;
  public static final int NUM = 2;
  public static final int RC = 18;
  public static final int UPP = 4;
  public static final int SO = 14;
  public static final int EOF = 0;
  public static final int DIV = 8;
  public static final int MINUS = 5;
  public static final int error = 1;
  public static final int DOT = 11;
  public static final int PROD = 7;
  public static final int SEM = 12;
  public static final int EQ = 9;
  public static final int SC = 15;
  public static final int UMINUS = 19;
  public static final String[] terminalNames = new String[] {
  "EOF",
  "error",
  "NUM",
  "LOW",
  "UPP",
  "MINUS",
  "PLUS",
  "PROD",
  "DIV",
  "EQ",
  "EXP",
  "DOT",
  "SEM",
  "INT",
  "SO",
  "SC",
  "COM",
  "RO",
  "RC",
  "UMINUS"
  };
public String[] TT;
	public sym(){
		TT = new String[100];
		TT[3]=new String("LOW");
		TT[6]=new String("PLUS");
		TT[13]=new String("INT");
		TT[17]=new String("RO");
		TT[16]=new String("COM");
		TT[10]=new String("EXP");
		TT[2]=new String("NUM");
		TT[18]=new String("RC");
		TT[4]=new String("UPP");
		TT[14]=new String("SO");
		TT[0]=new String("EOF");
		TT[8]=new String("DIV");
		TT[5]=new String("MINUS");
		TT[1]=new String("error");
		TT[11]=new String("DOT");
		TT[7]=new String("PROD");
		TT[12]=new String("SEM");
		TT[9]=new String("EQ");
		TT[15]=new String("SC");
		TT[19]=new String("UMINUS");
	}
public String getTT(int i){return TT[i];}
}

