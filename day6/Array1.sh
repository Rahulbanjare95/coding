#!/bin/bash -x


counter =0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Mango"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Papaya"

echo ${Fruits[*]:0:2}


#!/bin/bash -x


counter =0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Mango"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Papaya"

echo ${Fruits[*]:0:2}
