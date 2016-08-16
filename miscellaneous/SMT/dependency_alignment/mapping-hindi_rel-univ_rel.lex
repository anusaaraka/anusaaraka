%%

[ \t]fragof[ \t]	{	printf("\tdislocated\t");/*	}			
[ \t]punct	{	printf("\trsym\t");*/	}
[ \t]rsym[ \t]	{	printf("\tpunct\t");	}
[ \t]rad[ \t]		{	printf("\tvocative\t");	}
[ \t]k4[ \t]		{	printf("\tiobj\t");	}
[ \t]k2[ \t]		{	printf("\tdobj\t");	}
[ \t]nmod__k1inv[ \t]	{	printf("\tacl\t");	}
[ \t]nmod__k2inv[ \t]	{	printf("\tacl\t");	}
[ \t]mod__wq[ \t]	{	printf("\tdet\t");	}			

 /*below entries is for no comments and no condition found*/

[ \t]lwg__neg[ \t]	{	printf("\tneg\t");  	}
[ \t]sent-adv[ \t]	{	printf("\tadvcl\t");	}
[ \t]k7tu[ \t]	{	printf("\tnmod\t");	}
[ \t]nmod[ \t]	{	printf("\tamod\t");	}
[ \t]undef[ \t]	{	printf("\tdep\t");	}
[ \t]lwg__rp[ \t]	{	printf("\tdep\t");	}
[ \t]lwg__unk[ \t]	{	printf("\tdep\t");	

/* conditions given but no change in rel name entries*/ }
[ \t]k4a[ \t]		{	printf("\tnsubj\t");	}
[ \t]pk1[ \t]		{	printf("\tnsubj\t");	}
[ \t]lwg__intf[ \t]	{	printf("\tadvmod\t");	}
[ \t]jjmod__intf[ \t]	{	printf("\tadvmod\t");	}
[ \t]jjmod[ \t]	{	printf("\tadvmod\t");	}
[ \t]rh[ \t]		{	printf("\tadvcl\t");	}
[ \t]rt[ \t]		{	printf("\tadvcl\t");	}
[ \t]k1u[ \t]		{	printf("\tnmod\t");	}
[ \t]k2p[ \t]		{	printf("\tnmod\t");	}
[ \t]k2u[ \t]		{	printf("\tnmod\t");	}
[ \t]k3[ \t]		{	printf("\tnmod\t");	}
[ \t]k5[ \t]		{	printf("\tnmod\t");	}
[ \t]k7[ \t]		{	printf("\tnmod\t");	}
[ \t]k7a[ \t]		{	printf("\tnmod\t");	}
[ \t]k7p[ \t]		{	printf("\tnmod\t");	}
[ \t]k7t[ \t]		{	printf("\tnmod\t");/*	}
[ \t]r6[ \t]		{	printf("\tnmod\t");*/	}
[ \t]r6-k1[ \t]	{	printf("\tnsubj\t");	}
[ \t]r6-k2[ \t]	{	printf("\tdobj\t");	}
[ \t]r6v[ \t]		{	printf("\tnmod\t");	}
[ \t]ras-k1[ \t]	{	printf("\tnmod\t");	}
[ \t]ras-k2[ \t]	{	printf("\tnmod\t");	}
[ \t]ras-k7[ \t]	{	printf("\tnmod\t");	}
[ \t]ras-neg[ \t]	{	printf("\tnmod\t");	}
[ \t]rd[ \t]		{	printf("\tnmod\t");	}
[ \t]rsp[ \t]		{	printf("\tnmod\t");	}
[ \t]nmod__relc[ \t]	{	printf("\tacl\t");	}
[ \t]rs[ \t]		{	printf("\tacl\t");	}
[ \t]pof[ \t]		{	printf("\tcompound\t");	}
[ \t]pof__cn[ \t]	{	printf("\tcompound\t");	}
[ \t]pof__redup[ \t]	{	printf("\tcompound\t");/*	}
[ \t]nmod__adj[ \t]	{	printf("\tamod\t");*/	}
[ \t]lwg__nst[ \t]	{	printf("\tcase\t");	}
[ \t]lwg__psp[ \t]	{	printf("\tcase\t");	}
[ \t]adv[ \t]		{	printf("\tadvmod\t"); /* doubt ?  
 
 instance  not found cases -- need to verify */ }
[ \t]nmod__neg[ \t]	{	printf("\tneg\t");	}
[ \t]rbmod[ \t]	{	printf("\tadvmod\t");	}
[ \t]vmod__adv[ \t]	{	printf("\tadvmod\t");	}
[ \t]rtu[ \t]		{       printf("\tadvcl\t");	}
[ \t]jk1[ \t]		{       printf("\tnmod\t");	}
[ \t]mk1[ \t]		{       printf("\tdobj\t");	}
[ \t]k3u[ \t]		{       printf("\tnmod\t");	}
[ \t]k4u[ \t]		{       printf("\tnmod\t");	}
[ \t]k7pu[ \t]	{       printf("\tnmod\t");	}
[ \t]k7u[ \t]		{       printf("\tnmod\t");	}
[ \t]ras-k1u[ \t]	{       printf("\tnmod\t");	}
[ \t]ras-k4[ \t]	{       printf("\tnmod\t");	}
[ \t]ras-k4a[ \t]	{       printf("\tnmod\t");	}
[ \t]ras-k7p[ \t]	{       printf("\tnmod\t");	}
[ \t]ras-pof[ \t]	{       printf("\tnmod\t");	}
[ \t]ras-r6[ \t]	{       printf("\tnmod\t");	}
[ \t]ras-r6-k2[ \t]	{       printf("\tnmod\t");	}
[ \t]ras-rt[ \t]	{       printf("\tnmod\t");	}
[ \t]nmod__emph[ \t]	{       printf("\tnmod\t");	}
[ \t]k2g[ \t]		{       printf("\tacl\t");	}
[ \t]rbmod__relc[ \t]	{       printf("\tacl\t");	}
[ \t]pof_inv[ \t]	{       printf("\tcompound\t");	}
[ \t]nmod__pofinv[ \t]	{       printf("\tcompound\t");	}
[ \t]lwg__rdp[ \t]	{       printf("\tcompound\t");	}
[ \t]lwg__vm[ \t]	{       printf("\tcompound\t");	}
[ \t]enm[ \t]		{       printf("\tdep\t");	}
[ \t]psp__cl[ \t]	{       printf("\tcase\t");	}
[ \t]vmod[ \t]	{       printf("\tparataxis\t");}
[ \t]k1s[ \t]		{	printf("\troot_k1s\t");	}

