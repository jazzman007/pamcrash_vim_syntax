#!/bin/bash
rm -f pamtags pamtags.tmp
for i in *.inc *.pc *.mat; do 
   echo "XXXFILEXXX $i" >> pamtags.tmp
   cat $i | grep -v '^[\$\#]' | grep "^\(PART\|FUNCT\|FRAME\|SENSOR\|RUPMO\|FRICT\|THMAT\|PFMAT\|MATER\|VAMAT\|GROUP\|ACFLD\|RETRA\|BELTS\|CNTAC\|BAGIN\|SEWING\|LOOKU\|LAYER\|MPD\|PLY\|MMAT\|CNTPTY\|MODULE\|VECTOR\)" -A 3 >> pamtags.tmp
done
cat pamtags.tmp | gawk '
{ if ( $1 == "XXXFILEXXX" )
  {
     file = $2;
     next;
  }
  if ( $1 == "SEWING/" )
  {
     kw = "SEWING";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "MPD" )
  {
     kw = "MPD";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "PLY" )
  {
     kw = "PLY";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "MMAT" )
  {
     kw = "MMAT";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "PART" )
  {
     kw = "PART";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "LAYER" )
  {
     kw = "LAYER";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "LOOKU" )
  {
     kw = "LOOKU";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "BAGIN" )
  {
     kw = "BAGIN";
     pid = $3;
     string = $0;
     next;
  }
  if ( $1 == "MODULE/" )
  {
     kw = "MODULE";
     pid = $2;
     string = $0;
     next;
  }
  if ( $1 == "CNTAC" )
  {
     kw = "CNTAC";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "VECTOR/" )
  {
     kw = "VECTOR";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     print pid"\t"file"\t?^"string"$?;\"\tpamkind:"kw"\tpamname:Vector "pid;
     next;
  }
  if ( $1 == "CNTPTY/" )
  {
     kw = "CNTPTY";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "MATER" )
  {
     kw = "MATER";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "VAMAT" )
  {
     kw = "VAMAT";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "THMAT" )
  {
     kw = "THMAT";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "PFMAT" )
  {
     kw = "PFMAT";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "GROUP" )
  {
     kw = "GROUP";
     pid = 0;
     string = $0;
     start = match ($0,"\047");
     name = substr ($0,start);
     print name"\t"file"\t?^"string"$?;\"\tpamkind:"kw"\tpamname:"name;
     next;
  }
  if ( $1 == "FUNCT" )
  {
     kw = "FUNCT";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "BELTS" )
  {
     kw = "RETRA";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "RETRA" )
  {
     kw = "RETRA";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "ACFLD" )
  {
     kw = "ACFLD";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "FRAME" )
  {
     kw = "FRAME";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "RUPMO" )
  {
     kw = "RUPMO";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( substr( $0,0,6) == "SENSOR" )
  {
     kw = "SENSOR";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( $1 == "FRICT" )
  {
     kw = "FRICT";
     pid = gensub (" ","","g",substr ($0,9,8));
     string = $0;
     next;
  }
  if ( substr($0,0,4) == "NAME" )
  {
     name = substr ($0,5);
     print pid"\t"file"\t?^"string"$?;\"\tpamkind:"kw"\tpamname:"name;
     next;
  }
}' > pamtags
rm -f pamtags.tmp
