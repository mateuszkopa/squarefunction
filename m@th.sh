element=$(( RANDOM % 100 ))
zeroelement=$(( RANDOM % 100 ))
zero=$(( RANDOM % 100 ))
if [[ $element > 50 ]]; then
  plusminus1="-"
fi
if [[ $element < 50 ]]; then
  plusminus1="+"
fi
if [[ $element > 50 ]]; then
  plusminus2="-"
fi
if [[ $element < 50 ]]; then
  plusminus2="+"
fi
if [[ $zeroelement > 60 ]]; then
  zeroelementplace=">"
fi
if [[ $zeroelement < 40 ]]; then
  zeroelementplace="<"
fi
if [[ $zeroelement = 40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59 ]]; then
  zeroelementplacet="="
fi
clear
echo "Chose hard level"
echo ""
echo "[1] Easy      [2] Normal      [3] Hard      [4] Random"
read answear

if [[ $answear = 4 ]]; then
  answear=$(( RANDOM % 3))
fi
if [[ $answear = 1 ]]; then
  a=$(( RANDOM % 10 ))
  b=$(( RANDOM % 10 ))
  c=$(( RANDOM % 10 ))
  echo "$a x² $plusminus1 $b x $plusminus2 $c = $zero"
fi
if [[ $answear = 2 ]]; then
  a=$(( RANDOM % 100 ))
  b=$(( RANDOM % 100 ))
  c=$(( RANDOM % 100 ))
  echo "$a x² $plusminus1 $b x $plusminus2 $c $zeroelementplace $zero"
fi
if [[ $answear = 3 ]]; then
  a=$(( RANDOM % 1000 ))
  b=$(( RANDOM % 1000 ))
  c=$(( RANDOM % 1000 ))
  echo "$a x² $plusminus1 $b x $plusminus2 $c $zeroelementplace $zero"
fi
echo "Thanks for useing script"
