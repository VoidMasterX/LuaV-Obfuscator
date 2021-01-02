
return
(function(LuaM_II1ill11iI1i,...)local LuaM_lIIlII1=string.char;local LuaM_lII=string.gsub;local LuaM_liiiIillIi11=string.sub
local LuaM_l1i11iI=string.find;local LuaM_l1I11="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function LuaM_iilll1IlIiII1llii1ilI(LuaM_ilIi1ii)
LuaM_ilIi1ii=LuaM_lII(LuaM_ilIi1ii,
'[^'..LuaM_l1I11 ..'=]','')
return
LuaM_lII(LuaM_lII(LuaM_ilIi1ii,'.',function(LuaM_iIII11)if(LuaM_iIII11 =='=')then return''end
local LuaM_IiI,LuaM_I1iiIlIill='',(
LuaM_l1i11iI(LuaM_l1I11,LuaM_iIII11)-1)
for LuaM_IiiIi1i1IlI1l=6,1,-1 do
LuaM_IiI=LuaM_IiI..
(
LuaM_I1iiIlIill%2^LuaM_IiiIi1i1IlI1l-LuaM_I1iiIlIill%2^
(LuaM_IiiIi1i1IlI1l-1)>0 and'1'or'0')end;return LuaM_IiI end),'%d%d%d?%d?%d?%d?%d?%d?',function(LuaM_iiI)if(
#LuaM_iiI~=8)then return''end;local LuaM_lI1lI1lIiillii11iiil=0
for LuaM_Ii1IIiiillIiiii1=1,8 do
LuaM_lI1lI1lIiillii11iiil=
LuaM_lI1lI1lIiillii11iiil+
(

LuaM_liiiIillIi11(LuaM_iiI,LuaM_Ii1IIiiillIiiii1,LuaM_Ii1IIiiillIiiii1)=='1'and 2^ (8-LuaM_Ii1IIiiillIiiii1)or 0)end;return LuaM_lIIlII1(LuaM_lI1lI1lIiillii11iiil)end)end
local LuaM_il1iIiliii=LuaM_iilll1IlIiII1llii1ilI("XDI3XDc2XDExN1w5N1w4MVwwXDFcNFw4XDRcOFwwXDExXDBcMFwwXDBcMFwwXDBcNjRcMTA1XDExMFwxMTJcMTE3XDExNlw0NlwxMDhcMTE3XDk3XDBcMFwwXDBcMFwwXDBcMFwwXDBcMFwyXDRcMjNcMFwwXDBcNVwwXDBcMFwyOFwxMjhcMTI4XDBcNzBcNjRcNjRcMFwxMjlcMTI4XDBcMFwxOTNcMTkyXDBcMFw5Mlw2NFwxMjhcMVw3MFw2NFw2NFwwXDEyOVwwXDFcMFwxOTNcNjRcMVwwXDkyXDY0XDEyOFwxXDcwXDY0XDY0XDBcMTI5XDEyOFwxXDBcMTkzXDE5MlwxXDBcOTJcNjRcMTI4XDFcNzBcNjRcNjRcMFwxMjlcMFwyXDBcMTkzXDY0XDJcMFw5Mlw2NFwxMjhcMVw3MFw2NFw2NFwwXDEyOVwxMjhcMlwwXDE5M1wxOTJcMlwwXDkyXDY0XDEyOFwxXDMwXDBcMTI4XDBcMTJcMFwwXDBcNFw4XDBcMFwwXDBcMFwwXDBcMTAzXDEwMVwxMTZcMTAyXDEwMVwxMTBcMTE4XDBcNFw2XDBcMFwwXDBcMFwwXDBcMTEyXDExNFwxMDVcMTEwXDExNlwwXDRcNFwwXDBcMFwwXDBcMFwwXDEwNFwxMDVcNDlcMFw0XDdcMFwwXDBcMFwwXDBcMFwxMDRcMTAxXDEwOFwxMDhcMTExXDQ5XDBcNFw0XDBcMFwwXDBcMFwwXDBcMTA0XDEwNVw1MFwwXDRcN1wwXDBcMFwwXDBcMFwwXDEwNFwxMDFcMTA4XDEwOFwxMTFcNTBcMFw0XDRcMFwwXDBcMFwwXDBcMFwxMDRcMTA1XDUxXDBcNFw3XDBcMFwwXDBcMFwwXDBcMTA0XDEwMVwxMDhcMTA4XDExMVw1MVwwXDRcNFwwXDBcMFwwXDBcMFwwXDEwNFwxMDVcNTJcMFw0XDdcMFwwXDBcMFwwXDBcMFwxMDRcMTAxXDEwOFwxMDhcMTExXDUyXDBcNFw0XDBcMFwwXDBcMFwwXDBcMTA0XDEwNVw1M1wwXDRcN1wwXDBcMFwwXDBcMFwwXDEwNFwxMDFcMTA4XDEwOFwxMTFcNTNcMFwwXDBcMFwwXDIzXDBcMFwwXDFcMFwwXDBcMVwwXDBcMFwyXDBcMFwwXDJcMFwwXDBcMlwwXDBcMFwyXDBcMFwwXDNcMFwwXDBcM1wwXDBcMFwzXDBcMFwwXDNcMFwwXDBcNFwwXDBcMFw0XDBcMFwwXDRcMFwwXDBcNFwwXDBcMFw1XDBcMFwwXDVcMFwwXDBcNVwwXDBcMFw1XDBcMFwwXDZcMFwwXDBcNlwwXDBcMFw2XDBcMFwwXDZcMFwwXDBcNlwwXDBcMFwxXDBcMFwwXDRcMFwwXDBcMFwwXDBcMFwxMDFcMTEwXDExOFwwXDJcMFwwXDBcMjJcMFwwXDBcMFwwXDBcMA==")
local LuaM_lIl1={"ABC","ABx","ABC","ABC","ABC","ABx","ABC","ABx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","AsBx","ABC","ABC","ABC","ABx","ABC"}
local LuaM_l1lIilIiiI1I1illI1iI1={"MOVE","LOADK","LOADBOOL","LOADNIL","GETUPVAL","GETGLOBAL","GETTABLE","SETGLOBAL","SETUPVAL","SETTABLE","NEWTABLE","SELF","ADD","SUB","MUL","DIV","MOD","POW","UNM","NOT","LEN","CONCAT","JMP","EQ","LT","LE","TEST","TESTSET","CALL","TAILCALL","RETURN","FORLOOP","FORPREP","TFORLOOP","SETLIST","CLOSE","CLOSURE","VARARG"}
local function LuaM_iII1lIiillii1(LuaM_I11iiIi1lilII,LuaM_iiIlIIi1illlliIlil,LuaM_i1il1II1ii1I1ilIiIl1i)
if LuaM_i1il1II1ii1I1ilIiIl1i then local LuaM_lll=0;local LuaM_liliiilIiIi1lill1=0
for LuaM_l1iIlIi1=LuaM_iiIlIIi1illlliIlil,LuaM_i1il1II1ii1I1ilIiIl1i do
LuaM_lll=LuaM_lll+
2^
LuaM_liliiilIiIi1lill1*LuaM_iII1lIiillii1(LuaM_I11iiIi1lilII,LuaM_l1iIlIi1)LuaM_liliiilIiIi1lill1=LuaM_liliiilIiIi1lill1+1 end;return LuaM_lll else
local LuaM_l=2^ (LuaM_iiIlIIi1illlliIlil-1)
return
(LuaM_I11iiIi1lilII% (LuaM_l+LuaM_l)>=LuaM_l)and 1 or 0 end end
local function LuaM_iIl1IiilI1(LuaM_Ii)local LuaM_I1ii1IIiiIIIillli1=1;local LuaM_ii11IillI1Il=false;local LuaM_liIlI1I;local LuaM_I11iil1I1IIi1IIil;local LuaM_I1III1,LuaM_I
local LuaM_I1ll11i1,LuaM_ilIi1lIil,LuaM_il1I1i1iIIlIlIi1I1ii,LuaM_iiIii1I1iiIi,LuaM_il
do
function LuaM_I1ll11i1()
local LuaM_l=LuaM_Ii:byte(LuaM_I1ii1IIiiIIIillli1,LuaM_I1ii1IIiiIIIillli1)LuaM_I1ii1IIiiIIIillli1=LuaM_I1ii1IIiiIIIillli1+1;return LuaM_l end
function LuaM_ilIi1lIil()
local LuaM_ill,LuaM_i,LuaM_IIIi,LuaM_iI1ii1l1iIiil1iiilll=LuaM_Ii:byte(LuaM_I1ii1IIiiIIIillli1,LuaM_I1ii1IIiiIIIillli1+3)LuaM_I1ii1IIiiIIIillli1=LuaM_I1ii1IIiiIIIillli1+4
return
LuaM_iI1ii1l1iIiil1iiilll*
16777216+LuaM_IIIi*65536+LuaM_i*256+LuaM_ill end
function LuaM_il1I1i1iIIlIlIi1I1ii()local LuaM_IIIliIIIiliilil1i=LuaM_ilIi1lIil()
local LuaM_I1l1I1iliiIlll1ii1ll=LuaM_ilIi1lIil()return
LuaM_I1l1I1iliiIlll1ii1ll*4294967296+LuaM_IIIliIIIiliilil1i end
function LuaM_iiIii1I1iiIi()local LuaM_ililiii=LuaM_ilIi1lIil()local LuaM_iIl=LuaM_ilIi1lIil()
return
(-2*
LuaM_iII1lIiillii1(LuaM_iIl,32)+1)*
(2^ (
LuaM_iII1lIiillii1(LuaM_iIl,21,31)-1023))*
(
(LuaM_iII1lIiillii1(LuaM_iIl,1,20)* (
2^32)+LuaM_ililiii)/ (2^52)+1)end
function LuaM_il(LuaM_iliI1IiiliIIIIlliIlI)local LuaM_iIiiiiIiI1l1iiii
if LuaM_iliI1IiiliIIIIlliIlI then
LuaM_iIiiiiIiI1l1iiii=LuaM_Ii:sub(LuaM_I1ii1IIiiIIIillli1,LuaM_I1ii1IIiiIIIillli1+
LuaM_iliI1IiiliIIIIlliIlI-1)
LuaM_I1ii1IIiiIIIillli1=LuaM_I1ii1IIiiIIIillli1+LuaM_iliI1IiiliIIIIlliIlI else LuaM_iliI1IiiliIIIIlliIlI=LuaM_I()
if LuaM_iliI1IiiliIIIIlliIlI==0 then return end
LuaM_iIiiiiIiI1l1iiii=LuaM_Ii:sub(LuaM_I1ii1IIiiIIIillli1,
LuaM_I1ii1IIiiIIIillli1+LuaM_iliI1IiiliIIIIlliIlI-1)
LuaM_I1ii1IIiiIIIillli1=LuaM_I1ii1IIiiIIIillli1+LuaM_iliI1IiiliIIIIlliIlI end;return LuaM_iIiiiiIiI1l1iiii end end
local function LuaM_Iil1liIIIi1I1lI1I111I()local LuaM_lI1IIl1Il;local LuaM_l={}local LuaM_II1ill11iI1i={}local LuaM_li1ll11i1Ii={}local LuaM_illIilIIl={lines={}}
LuaM_lI1IIl1Il={instructions=LuaM_l,constants=LuaM_II1ill11iI1i,prototypes=LuaM_li1ll11i1Ii,debug=LuaM_illIilIIl}local LuaM_ilii11iiI1liii1ilIll;LuaM_lI1IIl1Il.name=LuaM_il()
LuaM_lI1IIl1Il.first_line=LuaM_I1III1()LuaM_lI1IIl1Il.last_line=LuaM_I1III1()
if LuaM_lI1IIl1Il.name then LuaM_lI1IIl1Il.name=LuaM_lI1IIl1Il.name:sub(1,
-2)end;LuaM_lI1IIl1Il.upvalues=LuaM_I1ll11i1()
LuaM_lI1IIl1Il.arguments=LuaM_I1ll11i1()LuaM_lI1IIl1Il.varg=LuaM_I1ll11i1()
LuaM_lI1IIl1Il.stack=LuaM_I1ll11i1()
do LuaM_ilii11iiI1liii1ilIll=LuaM_I1III1()
for LuaM_Il1Iii1Ii111I1111=1,LuaM_ilii11iiI1liii1ilIll do local LuaM_iIilli1IilI11I={}
local LuaM_Il1Ii1IiiIIli=LuaM_ilIi1lIil()local LuaM_il1IiII1lI1I=LuaM_iII1lIiillii1(LuaM_Il1Ii1IiiIIli,1,6)local LuaM_I=LuaM_lIl1[
LuaM_il1IiII1lI1I+1]
LuaM_iIilli1IilI11I.opcode=LuaM_il1IiII1lI1I;LuaM_iIilli1IilI11I.type=LuaM_I
LuaM_iIilli1IilI11I.A=LuaM_iII1lIiillii1(LuaM_Il1Ii1IiiIIli,7,14)
if LuaM_I=="ABC"then
LuaM_iIilli1IilI11I.B=LuaM_iII1lIiillii1(LuaM_Il1Ii1IiiIIli,24,32)
LuaM_iIilli1IilI11I.C=LuaM_iII1lIiillii1(LuaM_Il1Ii1IiiIIli,15,23)elseif LuaM_I=="ABx"then
LuaM_iIilli1IilI11I.Bx=LuaM_iII1lIiillii1(LuaM_Il1Ii1IiiIIli,15,32)elseif LuaM_I=="AsBx"then LuaM_iIilli1IilI11I.sBx=
LuaM_iII1lIiillii1(LuaM_Il1Ii1IiiIIli,15,32)-131071 end;LuaM_l[LuaM_Il1Iii1Ii111I1111]=LuaM_iIilli1IilI11I end end
do LuaM_ilii11iiI1liii1ilIll=LuaM_I1III1()
for LuaM_llllIiili1iiIl=1,LuaM_ilii11iiI1liii1ilIll do local LuaM_I1lIii111={}
local LuaM_Iii11111ilIl1lIIi1I=LuaM_I1ll11i1()LuaM_I1lIii111.type=LuaM_Iii11111ilIl1lIIi1I
if
LuaM_Iii11111ilIl1lIIi1I==1 then LuaM_I1lIii111.data=(LuaM_I1ll11i1()~=0)elseif
LuaM_Iii11111ilIl1lIIi1I==3 then LuaM_I1lIii111.data=LuaM_iiIii1I1iiIi()elseif
LuaM_Iii11111ilIl1lIIi1I==4 then
LuaM_I1lIii111.data=LuaM_il():sub(1,-2)end
LuaM_II1ill11iI1i[LuaM_llllIiili1iiIl-1]=LuaM_I1lIii111 end end
do LuaM_ilii11iiI1liii1ilIll=LuaM_I1III1()for LuaM_Ii1IIIlI1=1,LuaM_ilii11iiI1liii1ilIll do
LuaM_li1ll11i1Ii[LuaM_Ii1IIIlI1-1]=LuaM_Iil1liIIIi1I1lI1I111I()end end
do local LuaM_l1=LuaM_illIilIIl.lines
LuaM_ilii11iiI1liii1ilIll=LuaM_I1III1()
for LuaM_lIIli1I1Ii=1,LuaM_ilii11iiI1liii1ilIll do LuaM_l1[LuaM_lIIli1I1Ii]=LuaM_ilIi1lIil()end;LuaM_ilii11iiI1liii1ilIll=LuaM_I1III1()
for LuaM_llIl1lliI11Ili11ii1il=1,LuaM_ilii11iiI1liii1ilIll do
LuaM_il():sub(1,-2)LuaM_ilIi1lIil()LuaM_ilIi1lIil()end;LuaM_ilii11iiI1liii1ilIll=LuaM_I1III1()
for LuaM_liiIil1=1,LuaM_ilii11iiI1liii1ilIll do LuaM_il()end end;return LuaM_lI1IIl1Il end
do
assert(LuaM_il(4)=="\27Lua","Lua bytecode expected.")
assert(LuaM_I1ll11i1()==0x51,"Only Lua 5.1 is supported.")LuaM_I1ll11i1()
LuaM_ii11IillI1Il=(LuaM_I1ll11i1()==0)LuaM_liIlI1I=LuaM_I1ll11i1()
LuaM_I11iil1I1IIi1IIil=LuaM_I1ll11i1()
if LuaM_liIlI1I==4 then LuaM_I1III1=LuaM_ilIi1lIil elseif LuaM_liIlI1I==8 then
LuaM_I1III1=LuaM_il1I1i1iIIlIlIi1I1ii else error("Unsupported bytecode target platform")end
if LuaM_I11iil1I1IIi1IIil==4 then LuaM_I=LuaM_ilIi1lIil elseif LuaM_I11iil1I1IIi1IIil==8 then
LuaM_I=LuaM_il1I1i1iIIlIlIi1I1ii else error("Unsupported bytecode target platform")end
assert(LuaM_il(3)=="\4\8\0","Unsupported bytecode target platform")end;return LuaM_Iil1liIIIi1I1lI1I111I()end;local function LuaM_illl1lll1lii(...)local LuaM_iil1i1Ii1i1ill11I=select("#",...)local LuaM_Ii1iI={...}
return LuaM_iil1i1Ii1i1ill11I,LuaM_Ii1iI end
local function LuaM_I1li1I1iIiI1iiI1(LuaM_l,LuaM_llI1IiIIilli)
local LuaM_lIiIli1lI=LuaM_l.instructions;local LuaM_II1ill11iI1i=LuaM_l.constants;local LuaM_lI1i1iii=LuaM_l.prototypes
local LuaM_i1llI11lI11Il1II,LuaM_IiI;local LuaM_lii1il1l11IIl;local LuaM_II1IllIII111I=1;local LuaM_l1lliIiI1,LuaM_iIlii1l11IiIi1iIii
local LuaM_i1lllIiI11IIIiIli1l={[0]=function(LuaM_iIi1i1Iili11I1lI)
LuaM_i1llI11lI11Il1II[LuaM_iIi1i1Iili11I1lI.A]=LuaM_i1llI11lI11Il1II[LuaM_iIi1i1Iili11I1lI.B]end,[1]=function(LuaM_II1iI11II)
LuaM_i1llI11lI11Il1II[LuaM_II1iI11II.A]=LuaM_II1ill11iI1i[LuaM_II1iI11II.Bx].data end,[2]=function(LuaM_ii11l)LuaM_i1llI11lI11Il1II[LuaM_ii11l.A]=
LuaM_ii11l.B~=0;if LuaM_ii11l.C~=0 then
LuaM_II1IllIII111I=LuaM_II1IllIII111I+1 end end,[3]=function(LuaM_l1iI1llIilIl1I1I11lIi)
local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
for LuaM_llI1Illii1i1l1=LuaM_l1iI1llIilIl1I1I11lIi.A,LuaM_l1iI1llIilIl1I1I11lIi.B do LuaM_i1llI11lI11Il1II[LuaM_llI1Illii1i1l1]=
nil end end,[4]=function(LuaM_iiI)
LuaM_i1llI11lI11Il1II[LuaM_iiI.A]=LuaM_llI1IiIIilli[LuaM_iiI.B]end,[5]=function(LuaM_Il1l1IiIi1iil1ii)
local LuaM_IlilIlillIli1l1liI=LuaM_II1ill11iI1i[LuaM_Il1l1IiIi1iil1ii.Bx].data
LuaM_i1llI11lI11Il1II[LuaM_Il1l1IiIi1iil1ii.A]=LuaM_lii1il1l11IIl[LuaM_IlilIlillIli1l1liI]end,[6]=function(LuaM_ilililiIlI111iiIlll)
local LuaM_Il11iIli1lli1IIl1iI=LuaM_ilililiIlI111iiIlll.C;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
LuaM_Il11iIli1lli1IIl1iI=
LuaM_Il11iIli1lli1IIl1iI>255 and LuaM_II1ill11iI1i[
LuaM_Il11iIli1lli1IIl1iI-256].data or LuaM_i1llI11lI11Il1II[LuaM_Il11iIli1lli1IIl1iI]
LuaM_i1llI11lI11Il1II[LuaM_ilililiIlI111iiIlll.A]=LuaM_i1llI11lI11Il1II[LuaM_ilililiIlI111iiIlll.B][LuaM_Il11iIli1lli1IIl1iI]end,[7]=function(LuaM_ii)
local LuaM_IIIl=LuaM_II1ill11iI1i[LuaM_ii.Bx].data
LuaM_lii1il1l11IIl[LuaM_IIIl]=LuaM_i1llI11lI11Il1II[LuaM_ii.A]end,[8]=function(LuaM_iI)
LuaM_llI1IiIIilli[LuaM_iI.B]=LuaM_i1llI11lI11Il1II[LuaM_iI.A]end,[9]=function(LuaM_lill1i)local LuaM_Il1i111i1l=LuaM_lill1i.B
local LuaM_i1iI1l=LuaM_lill1i.C;local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i
LuaM_Il1i111i1l=
LuaM_Il1i111i1l>255 and
LuaM_II1ill11iI1i[LuaM_Il1i111i1l-256].data or LuaM_i1llI11lI11Il1II[LuaM_Il1i111i1l]
LuaM_i1iI1l=LuaM_i1iI1l>255 and
LuaM_II1ill11iI1i[LuaM_i1iI1l-256].data or LuaM_i1llI11lI11Il1II[LuaM_i1iI1l]
LuaM_i1llI11lI11Il1II[LuaM_lill1i.A][LuaM_Il1i111i1l]=LuaM_i1iI1l end,[10]=function(LuaM_I)
LuaM_i1llI11lI11Il1II[LuaM_I.A]={}end,[11]=function(LuaM_I1III111il)local LuaM_i1IlIIIlilIlIiIIil1I=LuaM_I1III111il.A
local LuaM_iII=LuaM_I1III111il.B;local LuaM_iilii1=LuaM_I1III111il.C;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
LuaM_iII=LuaM_i1llI11lI11Il1II[LuaM_iII]
LuaM_iilii1=LuaM_iilii1 >255 and
LuaM_II1ill11iI1i[LuaM_iilii1-256].data or LuaM_i1llI11lI11Il1II[LuaM_iilii1]
LuaM_i1llI11lI11Il1II[LuaM_i1IlIIIlilIlIiIIil1I+1]=LuaM_iII
LuaM_i1llI11lI11Il1II[LuaM_i1IlIIIlilIlIiIIil1I]=LuaM_iII[LuaM_iilii1]end,[12]=function(LuaM_iIIi11I11liill11iilI)
local LuaM_IllIli1i1IiI1=LuaM_iIIi11I11liill11iilI.B;local LuaM_liillIl=LuaM_iIIi11I11liill11iilI.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i
LuaM_IllIli1i1IiI1=LuaM_IllIli1i1IiI1 >255 and
LuaM_II1ill11iI1i[LuaM_IllIli1i1IiI1-256].data or
LuaM_i1llI11lI11Il1II[LuaM_IllIli1i1IiI1]
LuaM_liillIl=LuaM_liillIl>255 and
LuaM_II1ill11iI1i[LuaM_liillIl-256].data or LuaM_i1llI11lI11Il1II[LuaM_liillIl]LuaM_i1llI11lI11Il1II[LuaM_iIIi11I11liill11iilI.A]=LuaM_IllIli1i1IiI1+
LuaM_liillIl end,[13]=function(LuaM_Ii1iil1Ii1lIlI1iiii1)
local LuaM_l11Il1IlIilII1i=LuaM_Ii1iil1Ii1lIlI1iiii1.B;local LuaM_ll=LuaM_Ii1iil1Ii1lIlI1iiii1.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i
LuaM_l11Il1IlIilII1i=LuaM_l11Il1IlIilII1i>255 and
LuaM_II1ill11iI1i[LuaM_l11Il1IlIilII1i-256].data or
LuaM_i1llI11lI11Il1II[LuaM_l11Il1IlIilII1i]
LuaM_ll=
LuaM_ll>255 and LuaM_II1ill11iI1i[LuaM_ll-256].data or LuaM_i1llI11lI11Il1II[LuaM_ll]
LuaM_i1llI11lI11Il1II[LuaM_Ii1iil1Ii1lIlI1iiii1.A]=LuaM_l11Il1IlIilII1i-LuaM_ll end,[14]=function(LuaM_ilIlI1IIIl1iIlIIiIi)
local LuaM_I1lIli1i1I=LuaM_ilIlI1IIIl1iIlIIiIi.B;local LuaM_iiiiiI1IIIll1l1liIIil=LuaM_ilIlI1IIIl1iIlIIiIi.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i
LuaM_I1lIli1i1I=LuaM_I1lIli1i1I>255 and
LuaM_II1ill11iI1i[LuaM_I1lIli1i1I-256].data or LuaM_i1llI11lI11Il1II[LuaM_I1lIli1i1I]
LuaM_iiiiiI1IIIll1l1liIIil=LuaM_iiiiiI1IIIll1l1liIIil>255 and
LuaM_II1ill11iI1i[LuaM_iiiiiI1IIIll1l1liIIil-256].data or
LuaM_i1llI11lI11Il1II[LuaM_iiiiiI1IIIll1l1liIIil]LuaM_i1llI11lI11Il1II[LuaM_ilIlI1IIIl1iIlIIiIi.A]=LuaM_I1lIli1i1I*
LuaM_iiiiiI1IIIll1l1liIIil end,[15]=function(LuaM_l1I1l1iIllilIII)
local LuaM_ii1Ili1lii111il1Ii=LuaM_l1I1l1iIllilIII.B;local LuaM_i1IlIilII=LuaM_l1I1l1iIllilIII.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i
LuaM_ii1Ili1lii111il1Ii=LuaM_ii1Ili1lii111il1Ii>255 and
LuaM_II1ill11iI1i[LuaM_ii1Ili1lii111il1Ii-256].data or
LuaM_i1llI11lI11Il1II[LuaM_ii1Ili1lii111il1Ii]
LuaM_i1IlIilII=LuaM_i1IlIilII>255 and
LuaM_II1ill11iI1i[LuaM_i1IlIilII-256].data or LuaM_i1llI11lI11Il1II[LuaM_i1IlIilII]
LuaM_i1llI11lI11Il1II[LuaM_l1I1l1iIllilIII.A]=LuaM_ii1Ili1lii111il1Ii/LuaM_i1IlIilII end,[16]=function(LuaM_I1IlI1Ii1i1llli11lI)
local LuaM_li=LuaM_I1IlI1Ii1i1llli11lI.B;local LuaM_liIlli1IIlll11lIil1ll=LuaM_I1IlI1Ii1i1llli11lI.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i
LuaM_li=
LuaM_li>255 and LuaM_II1ill11iI1i[LuaM_li-256].data or LuaM_i1llI11lI11Il1II[LuaM_li]
LuaM_liIlli1IIlll11lIil1ll=LuaM_liIlli1IIlll11lIil1ll>255 and
LuaM_II1ill11iI1i[LuaM_liIlli1IIlll11lIil1ll-256].data or
LuaM_i1llI11lI11Il1II[LuaM_liIlli1IIlll11lIil1ll]LuaM_i1llI11lI11Il1II[LuaM_I1IlI1Ii1i1llli11lI.A]=LuaM_li%
LuaM_liIlli1IIlll11lIil1ll end,[17]=function(LuaM_li1ll1ili)
local LuaM_iI=LuaM_li1ll1ili.B;local LuaM_Il=LuaM_li1ll1ili.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i
LuaM_iI=
LuaM_iI>255 and LuaM_II1ill11iI1i[LuaM_iI-256].data or LuaM_i1llI11lI11Il1II[LuaM_iI]
LuaM_Il=
LuaM_Il>255 and LuaM_II1ill11iI1i[LuaM_Il-256].data or LuaM_i1llI11lI11Il1II[LuaM_Il]
LuaM_i1llI11lI11Il1II[LuaM_li1ll1ili.A]=LuaM_iI^LuaM_Il end,[18]=function(LuaM_llIiIl1l1IIilI)
LuaM_i1llI11lI11Il1II[LuaM_llIiIl1l1IIilI.A]=
-LuaM_i1llI11lI11Il1II[LuaM_llIiIl1l1IIilI.B]end,[19]=function(LuaM_lI1l1iIllll11llii)
LuaM_i1llI11lI11Il1II[LuaM_lI1l1iIllll11llii.A]=
not LuaM_i1llI11lI11Il1II[LuaM_lI1l1iIllll11llii.B]end,[20]=function(LuaM_I1)
LuaM_i1llI11lI11Il1II[LuaM_I1.A]=
#LuaM_i1llI11lI11Il1II[LuaM_I1.B]end,[21]=function(LuaM_illIlIl1IlIlIl)
local LuaM_IlIi=LuaM_illIlIl1IlIlIl.B;local LuaM_il1IlliI1ll11i1Il=LuaM_i1llI11lI11Il1II[LuaM_IlIi]
for LuaM_I1iil1lI1IlliilI1II1l=LuaM_IlIi+1,LuaM_illIlIl1IlIlIl.C
do
LuaM_il1IlliI1ll11i1Il=LuaM_il1IlliI1ll11i1Il..LuaM_i1llI11lI11Il1II[LuaM_I1iil1lI1IlliilI1II1l]end
LuaM_i1llI11lI11Il1II[LuaM_illIlIl1IlIlIl.A]=LuaM_il1IlliI1ll11i1Il end,[22]=function(LuaM_iIli)LuaM_II1IllIII111I=
LuaM_II1IllIII111I+LuaM_iIli.sBx end,[23]=function(LuaM_l1ll1I1iIIIIII1iil)
local LuaM_i111lII1I1l1lli1l=LuaM_l1ll1I1iIIIIII1iil.A;local LuaM_llli11il1illI11=LuaM_l1ll1I1iIIIIII1iil.B
local LuaM_lIlI1I=LuaM_l1ll1I1iIIIIII1iil.C;local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i;LuaM_i111lII1I1l1lli1l=
LuaM_i111lII1I1l1lli1l~=0
if
(LuaM_llli11il1illI11 >255)then
LuaM_llli11il1illI11=LuaM_II1ill11iI1i[LuaM_llli11il1illI11-256].data else
LuaM_llli11il1illI11=LuaM_i1llI11lI11Il1II[LuaM_llli11il1illI11]end
if(LuaM_lIlI1I>255)then
LuaM_lIlI1I=LuaM_II1ill11iI1i[LuaM_lIlI1I-256].data else LuaM_lIlI1I=LuaM_i1llI11lI11Il1II[LuaM_lIlI1I]end
if
(LuaM_llli11il1illI11 ==LuaM_lIlI1I)~=LuaM_i111lII1I1l1lli1l then LuaM_II1IllIII111I=LuaM_II1IllIII111I+1 end end,[24]=function(LuaM_l1i1)
local LuaM_I1li1Il1iI=LuaM_l1i1.A;local LuaM_i=LuaM_l1i1.B;local LuaM_i=LuaM_l1i1.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i;LuaM_I1li1Il1iI=LuaM_I1li1Il1iI~=0
LuaM_i=LuaM_i>255 and
LuaM_II1ill11iI1i[LuaM_i-256].data or LuaM_i1llI11lI11Il1II[LuaM_i]
LuaM_i=
LuaM_i>255 and LuaM_II1ill11iI1i[LuaM_i-256].data or LuaM_i1llI11lI11Il1II[LuaM_i]if(LuaM_i<LuaM_i)~=LuaM_I1li1Il1iI then
LuaM_II1IllIII111I=LuaM_II1IllIII111I+1 end end,[25]=function(LuaM_Ii)
local LuaM_lIIlIlIl1il1=LuaM_Ii.A;local LuaM_ili=LuaM_Ii.B;local LuaM_lli1iI1=LuaM_Ii.C
local LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i=LuaM_i1llI11lI11Il1II,LuaM_II1ill11iI1i;LuaM_lIIlIlIl1il1=LuaM_lIIlIlIl1il1 ~=0
LuaM_ili=LuaM_ili>255 and LuaM_II1ill11iI1i[
LuaM_ili-256].data or
LuaM_i1llI11lI11Il1II[LuaM_ili]
LuaM_lli1iI1=LuaM_lli1iI1 >255 and
LuaM_II1ill11iI1i[LuaM_lli1iI1-256].data or LuaM_i1llI11lI11Il1II[LuaM_lli1iI1]
if(LuaM_ili<=LuaM_lli1iI1)~=LuaM_lIIlIlIl1il1 then LuaM_II1IllIII111I=
LuaM_II1IllIII111I+1 end end,[26]=function(LuaM_li1)
local LuaM_il1il1iIiI=LuaM_i1llI11lI11Il1II[LuaM_li1.A]
if
(not not LuaM_il1il1iIiI)== (LuaM_li1.C==0)then LuaM_II1IllIII111I=LuaM_II1IllIII111I+1 end end,[27]=function(LuaM_I1l1illlilii)
local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
local LuaM_lIIIIIllilIi11I1lI=LuaM_i1llI11lI11Il1II[LuaM_I1l1illlilii.B]
if(not not LuaM_lIIIIIllilIi11I1lI)== (LuaM_I1l1illlilii.C==
0)then
LuaM_II1IllIII111I=LuaM_II1IllIII111I+1 else
LuaM_i1llI11lI11Il1II[LuaM_I1l1illlilii.A]=LuaM_lIIIIIllilIi11I1lI end end,[28]=function(LuaM_l)
local LuaM_ilII1iIIi1iI=LuaM_l.A;local LuaM_lIlillilli1llilil1IiI=LuaM_l.B;local LuaM_IIi=LuaM_l.C
local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II;local LuaM_ililiI1l1i1,LuaM_lil11IilI11liII1;local LuaM_lIiIlI,LuaM_liiIl1llIll1Ili;LuaM_ililiI1l1i1={}
if
LuaM_lIlillilli1llilil1IiI~=1 then
if LuaM_lIlillilli1llilil1IiI~=0 then LuaM_lIiIlI=
LuaM_ilII1iIIi1iI+LuaM_lIlillilli1llilil1IiI-1 else LuaM_lIiIlI=LuaM_IiI end;LuaM_liiIl1llIll1Ili=0
for LuaM_ililiIiiIili1=LuaM_ilII1iIIi1iI+1,LuaM_lIiIlI do
LuaM_liiIl1llIll1Ili=LuaM_liiIl1llIll1Ili+1
LuaM_ililiI1l1i1[LuaM_liiIl1llIll1Ili]=LuaM_i1llI11lI11Il1II[LuaM_ililiIiiIili1]end
LuaM_lIiIlI,LuaM_lil11IilI11liII1=LuaM_illl1lll1lii(LuaM_i1llI11lI11Il1II[LuaM_ilII1iIIi1iI](unpack(LuaM_ililiI1l1i1,1,
LuaM_lIiIlI-LuaM_ilII1iIIi1iI)))else
LuaM_lIiIlI,LuaM_lil11IilI11liII1=LuaM_illl1lll1lii(LuaM_i1llI11lI11Il1II[LuaM_ilII1iIIi1iI]())end;LuaM_IiI=LuaM_ilII1iIIi1iI-1
if LuaM_IIi~=1 then if LuaM_IIi~=0 then LuaM_lIiIlI=
LuaM_ilII1iIIi1iI+LuaM_IIi-2 else
LuaM_lIiIlI=LuaM_lIiIlI+LuaM_ilII1iIIi1iI end
LuaM_liiIl1llIll1Ili=0
for LuaM_lIiili1IIii=LuaM_ilII1iIIi1iI,LuaM_lIiIlI do LuaM_liiIl1llIll1Ili=LuaM_liiIl1llIll1Ili+1
LuaM_i1llI11lI11Il1II[LuaM_lIiili1IIii]=LuaM_lil11IilI11liII1[LuaM_liiIl1llIll1Ili]end end end,[29]=function(LuaM_I1ililIlIiIiii11i)
local LuaM_Ili=LuaM_I1ililIlIiIiii11i.A;local LuaM_iI1ill1l1Ii=LuaM_I1ililIlIiIiii11i.B
local LuaM_l1li=LuaM_I1ililIlIiIiii11i.C;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II;local LuaM_IiIiIIi111i11i,LuaM_iI1Ilii11Ilill1i
local LuaM_IiI,LuaM_lliII1IlIllll,LuaM_Ii11ll=LuaM_IiI;LuaM_IiIiIIi111i11i={}
if LuaM_iI1ill1l1Ii~=1 then if LuaM_iI1ill1l1Ii~=0 then LuaM_lliII1IlIllll=LuaM_Ili+
LuaM_iI1ill1l1Ii-1 else
LuaM_lliII1IlIllll=LuaM_IiI end;LuaM_Ii11ll=0
for LuaM_Iiliii1iIIiiiIil11iII=LuaM_Ili+1,LuaM_lliII1IlIllll
do LuaM_Ii11ll=LuaM_Ii11ll+1
LuaM_IiIiIIi111i11i[#LuaM_IiIiIIi111i11i+1]=LuaM_i1llI11lI11Il1II[LuaM_Iiliii1iIIiiiIil11iII]end
LuaM_iI1Ilii11Ilill1i={LuaM_i1llI11lI11Il1II[LuaM_Ili](unpack(LuaM_IiIiIIi111i11i,1,LuaM_lliII1IlIllll-LuaM_Ili))}else
LuaM_iI1Ilii11Ilill1i={LuaM_i1llI11lI11Il1II[LuaM_Ili]()}end;return true,LuaM_iI1Ilii11Ilill1i end,[30]=function(LuaM_IiIlI1iIIi)
local LuaM_i1Iiii1I11i1iI1=LuaM_IiIlI1iIIi.A;local LuaM_lIi1i1=LuaM_IiIlI1iIIi.B;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
local LuaM_liiI1i11lIIl11II1lI11;local LuaM_lii1iili,LuaM_illiililIIIlIi;if LuaM_lIi1i1 ==1 then return true end;if LuaM_lIi1i1 ==0 then
LuaM_liiI1i11lIIl11II1lI11=LuaM_IiI else
LuaM_liiI1i11lIIl11II1lI11=LuaM_i1Iiii1I11i1iI1+LuaM_lIi1i1-2 end
LuaM_illiililIIIlIi={}local LuaM_lii1iili=0
for LuaM_i1i1Il=LuaM_i1Iiii1I11i1iI1,LuaM_liiI1i11lIIl11II1lI11 do LuaM_lii1iili=LuaM_lii1iili+1
LuaM_illiililIIIlIi[LuaM_lii1iili]=LuaM_i1llI11lI11Il1II[LuaM_i1i1Il]end;return true,LuaM_illiililIIIlIi end,[31]=function(LuaM_liIll1IlIil11ii)
local LuaM_I1li=LuaM_liIll1IlIil11ii.A;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
local LuaM_i11lli1lillI11lIIli=LuaM_i1llI11lI11Il1II[LuaM_I1li+2]
local LuaM_ill1ili=LuaM_i1llI11lI11Il1II[LuaM_I1li]+LuaM_i11lli1lillI11lIIli;LuaM_i1llI11lI11Il1II[LuaM_I1li]=LuaM_ill1ili
if
LuaM_i11lli1lillI11lIIli>0 then
if LuaM_ill1ili<=LuaM_i1llI11lI11Il1II[LuaM_I1li+1]then
LuaM_II1IllIII111I=
LuaM_II1IllIII111I+LuaM_liIll1IlIil11ii.sBx;LuaM_i1llI11lI11Il1II[LuaM_I1li+3]=LuaM_ill1ili end else
if LuaM_ill1ili>=LuaM_i1llI11lI11Il1II[LuaM_I1li+1]then
LuaM_II1IllIII111I=
LuaM_II1IllIII111I+LuaM_liIll1IlIil11ii.sBx;LuaM_i1llI11lI11Il1II[LuaM_I1li+3]=LuaM_ill1ili end end end,[32]=function(LuaM_il1iil111)
local LuaM_li=LuaM_il1iil111.A;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
LuaM_i1llI11lI11Il1II[LuaM_li]=
LuaM_i1llI11lI11Il1II[LuaM_li]-LuaM_i1llI11lI11Il1II[LuaM_li+2]
LuaM_II1IllIII111I=LuaM_II1IllIII111I+LuaM_il1iil111.sBx end,[33]=function(LuaM_ilIiI1l11llli11)
local LuaM_Ii11iIll1lll11IlI=LuaM_ilIiI1l11llli11.A;local LuaM_i11IiI=LuaM_ilIiI1l11llli11.B
local LuaM_l11lI=LuaM_ilIiI1l11llli11.C;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
local LuaM_iiilII1IllIiliii=LuaM_Ii11iIll1lll11IlI+2
local LuaM_iiiIlI11illIiI={LuaM_i1llI11lI11Il1II[LuaM_Ii11iIll1lll11IlI](LuaM_i1llI11lI11Il1II[LuaM_Ii11iIll1lll11IlI+1],LuaM_i1llI11lI11Il1II[
LuaM_Ii11iIll1lll11IlI+2])}for LuaM_liiiiiI1=1,LuaM_l11lI do
LuaM_i1llI11lI11Il1II[LuaM_iiilII1IllIiliii+LuaM_liiiiiI1]=LuaM_iiiIlI11illIiI[LuaM_liiiiiI1]end
if LuaM_i1llI11lI11Il1II[
LuaM_Ii11iIll1lll11IlI+3]~=nil then
LuaM_i1llI11lI11Il1II[
LuaM_Ii11iIll1lll11IlI+2]=LuaM_i1llI11lI11Il1II[LuaM_Ii11iIll1lll11IlI+3]else LuaM_II1IllIII111I=LuaM_II1IllIII111I+1 end end,[34]=function(LuaM_iI)
local LuaM_l1l=LuaM_iI.A;local LuaM_i1i1l11lII11i=LuaM_iI.B;local LuaM_Il=LuaM_iI.C
local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II
if LuaM_Il==0 then error("NYI: extended SETLIST")else
local LuaM_li1i1i1III=(LuaM_Il-1)*50;local LuaM_lI111ll=LuaM_i1llI11lI11Il1II[LuaM_l1l]if LuaM_i1i1l11lII11i==0 then
LuaM_i1i1l11lII11i=LuaM_IiI end
for LuaM_i1=1,LuaM_i1i1l11lII11i do LuaM_lI111ll[LuaM_li1i1i1III+LuaM_i1]=LuaM_i1llI11lI11Il1II[
LuaM_l1l+LuaM_i1]end end end,[35]=function(LuaM_IIilI1l11iI)
io.stderr:write("NYI: CLOSE")io.stderr:flush()end,[36]=function(LuaM_l111iIIi1iiil1l)
local LuaM_i1I=LuaM_lI1i1iii[LuaM_l111iIIi1iiil1l.Bx]local LuaM_lIiIli1lI=LuaM_lIiIli1lI;local LuaM_i1llI11lI11Il1II=LuaM_i1llI11lI11Il1II;local LuaM_llIlI1lI={}
local LuaM_iiliiiiIl=setmetatable({},{__index=function(LuaM_iiiI11ilI11II,LuaM_i1IlIIlII)
local LuaM_lllI1ll1ii1iIlIi=LuaM_llIlI1lI[LuaM_i1IlIIlII]return
LuaM_lllI1ll1ii1iIlIi.segment[LuaM_lllI1ll1ii1iIlIi.offset]end,__newindex=function(LuaM_l1liIll11IIIll,LuaM_iill1iI1l11IIlIll1,LuaM_I1111iIIiiIlilli1111)
local LuaM_lil1l1ilIiIliIIIil1i=LuaM_llIlI1lI[LuaM_iill1iI1l11IIlIll1]
LuaM_lil1l1ilIiIliIIIil1i.segment[LuaM_lil1l1ilIiIliIIIil1i.offset]=LuaM_I1111iIIiiIlilli1111 end})
for LuaM_l=1,LuaM_i1I.upvalues do local LuaM_IiI1I11=LuaM_lIiIli1lI[LuaM_II1IllIII111I]
if
LuaM_IiI1I11.opcode==0 then
LuaM_llIlI1lI[LuaM_l-1]={segment=LuaM_i1llI11lI11Il1II,offset=LuaM_IiI1I11.B}elseif
LuaM_lIiIli1lI[LuaM_II1IllIII111I].opcode==4 then
LuaM_llIlI1lI[LuaM_l-1]={segment=LuaM_llI1IiIIilli,offset=LuaM_IiI1I11.B}end;LuaM_II1IllIII111I=LuaM_II1IllIII111I+1 end
local LuaM_ii1111Iii11iiil11ili,LuaM_i1iliI1IIiiii1=LuaM_I1li1I1iIiI1iiI1(LuaM_i1I,LuaM_iiliiiiIl)
LuaM_i1llI11lI11Il1II[LuaM_l111iIIi1iiil1l.A]=LuaM_i1iliI1IIiiii1 end,[37]=function(LuaM_Il111iiIi)
local LuaM_l1iIl11i11III1l=LuaM_Il111iiIi.A;local LuaM_IIl1i1IiIlIl11=LuaM_Il111iiIi.B
local LuaM_i1llI11lI11Il1II,LuaM_l1lliIiI1=LuaM_i1llI11lI11Il1II,LuaM_l1lliIiI1
for LuaM_illiIlIIiI1l1iI=LuaM_l1iIl11i11III1l,LuaM_l1iIl11i11III1l+
(
LuaM_IIl1i1IiIlIl11 >0 and LuaM_IIl1i1IiIlIl11-1 or LuaM_iIlii1l11IiIi1iIii)do
LuaM_i1llI11lI11Il1II[LuaM_illiIlIIiI1l1iI]=LuaM_l1lliIiI1[
LuaM_illiIlIIiI1l1iI-LuaM_l1iIl11i11III1l]end end}
local function LuaM_ill1IIII1ll1I1()local LuaM_lIiIli1lI=LuaM_lIiIli1lI;local LuaM_lIlIlIIli,LuaM_ii1iI1iI,LuaM_IilIi1lIl1I1
while true do
LuaM_lIlIlIIli=LuaM_lIiIli1lI[LuaM_II1IllIII111I]LuaM_II1IllIII111I=LuaM_II1IllIII111I+1
LuaM_ii1iI1iI,LuaM_IilIi1lIl1I1=LuaM_i1lllIiI11IIIiIli1l[LuaM_lIlIlIIli.opcode](LuaM_lIlIlIIli)if LuaM_ii1iI1iI then return LuaM_IilIi1lIl1I1 end end end
local LuaM_IllII1111iIIIllI1ii={get_stack=function()return LuaM_i1llI11lI11Il1II end,get_IP=function()return LuaM_II1IllIII111I end}
local function LuaM_ii1111IllI1(...)local LuaM_lIiIliii1iii1lI={}local LuaM_l11I1={}LuaM_IiI=-1
LuaM_i1llI11lI11Il1II=setmetatable(LuaM_lIiIliii1iii1lI,{__index=LuaM_l11I1,__newindex=function(LuaM_illI,LuaM_iilillIlllIlllIi11i,LuaM_l1l1iii1ill1IlI)if
LuaM_iilillIlllIlllIi11i>LuaM_IiI and LuaM_l1l1iii1ill1IlI then
LuaM_IiI=LuaM_iilillIlllIlllIi11i end
LuaM_l11I1[LuaM_iilillIlllIlllIi11i]=LuaM_l1l1iii1ill1IlI end})local LuaM_l1IillliI1II={...}LuaM_l1lliIiI1={}
LuaM_iIlii1l11IiIi1iIii=select("#",...)-1
for LuaM_llIllI1=0,LuaM_iIlii1l11IiIi1iIii do
LuaM_lIiIliii1iii1lI[LuaM_llIllI1]=LuaM_l1IillliI1II[LuaM_llIllI1+1]
LuaM_l1lliIiI1[LuaM_llIllI1]=LuaM_l1IillliI1II[LuaM_llIllI1+1]end;LuaM_lii1il1l11IIl=getfenv()LuaM_II1IllIII111I=1
local LuaM_ilI1il1IIIiI=coroutine.create(LuaM_ill1IIII1ll1I1)local LuaM_Ill1IlIillIl,LuaM_lliillI=coroutine.resume(LuaM_ilI1il1IIIiI)
if
LuaM_Ill1IlIillIl then if LuaM_lliillI then return unpack(LuaM_lliillI)end;return else
if advanced_debug then else
local LuaM_I1lI11lIIIilil=LuaM_l.name
local LuaM_iIi1iiIil=LuaM_l.debug.lines[LuaM_II1IllIII111I]local LuaM_iiii1Il=LuaM_lliillI:gsub("(.-:)","")local LuaM_I=""LuaM_I=LuaM_I..
(
LuaM_I1lI11lIIIilil and LuaM_I1lI11lIIIilil..":"or"")LuaM_I=LuaM_I..
(
LuaM_iIi1iiIil and LuaM_iIi1iiIil..":"or"")
LuaM_I=LuaM_I..LuaM_lliillI;error(LuaM_I,0)end end end;return LuaM_IllII1111iIIIllI1ii,LuaM_ii1111IllI1 end
local function LuaM_Iil(LuaM_lIi)local LuaM_I11llil1IIilil1lIi1l=LuaM_iIl1IiilI1(LuaM_lIi)
local LuaM_ll11l,LuaM_I1liI=LuaM_I1li1I1iIiI1iiI1(LuaM_I11llil1IIilil1lIi1l)return LuaM_I1liI end;return LuaM_Iil(LuaM_il1iIiliii)()end)({testvar0=0,testvar1=1,testvar2=2,testvar3=3})