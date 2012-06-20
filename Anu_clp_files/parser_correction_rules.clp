 (deffunction get_no(?node ?o_cat ?m_cat)
	(bind ?no (sub-string (+ (length ?o_cat) 1 ) (length ?node) ?node ))
        (bind ?no (explode$ (str-cat ?m_cat ?no)))
	(bind ?new_no ?no)
 )

 ;==========================  Modify category info in category file and constituents file ================================

 ; if word is number then modify cat as CD
 ;The result of experiment of scattering of alpha particles by gold foil, in 1911 by Ernest Rutherford (1871 1937) established the nuclear model of the atom, which then became the basis of the quantum theory of hydrogen atom given in 1913 by Niels Bohr (1885 1962).
 (defrule modify_cat
 (parserid-word ?id ?word)
 (test (numberp ?word))
 ?f<-(id-sd_cat  ?id  ?cat&~CD)
 =>
	(retract ?f)
	(assert (id-sd_cat  ?id  CD))
	(assert (id-org_cat-mod_cat ?id ?cat CD))
 )	
 ;------------------------------------------------------------------------------------------------------------------------
 ; modify cons file with the modified cat
 (defrule modify_cons
 (id-org_cat-mod_cat ?id ?o_cat ?m_cat)
 ?f<-(Head-Level-Mother-Daughters ?h ?l ?mot ?id)
 ?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 $?pre ?mot $?pos)
 ?f2<-(Node-Category  ?mot   ?o_cat)
 (test (neq ?l ?l1))
 =>
	(retract ?f ?f1 ?f2)
	(bind ?Mot (get_no ?mot ?o_cat ?m_cat))
	(assert (Head-Level-Mother-Daughters ?h ?l ?Mot ?id))
	(assert (Head-Level-Mother-Daughters ?h1 ?l1 $?pre ?Mot $?pos))
	(assert (Node-Category  ?Mot   ?m_cat))
 )
 ;======================================= LWG correction rules ==========================================

 ;The mother calmed the angry son.The jet zoomed across the sky.
 ;Who translated the sentence for the student? The snake who swallowed the rat hissed loudly.
 (defrule make_VBN_as_VBD
 (Head-Level-Mother-Daughters ?h ?l ?S $?a ?VP $?a1)
 (Node-Category ?S S|SQ)
 (Node-Category ?VP VP)
 ?f0<-(Head-Level-Mother-Daughters ?h1 ?l1 ?VP ?VBN $?d)
 ?f1<-(Node-Category ?VBN VBN)
 ?f2<-(Head-Level-Mother-Daughters ?h2 ?l2 ?VBN ?id)
 ?f<-(id-sd_cat  ?id  ?cat)
 =>
	(retract ?f ?f0 ?f1 ?f2)
	(bind ?Mot (get_no ?VBN VBN VBD))
	(assert (Head-Level-Mother-Daughters ?h1 ?l1 ?VP ?Mot $?d))
	(assert (Node-Category ?Mot VBD))
	(assert (Head-Level-Mother-Daughters ?h2 ?l2 ?Mot ?id))
	(assert (id-sd_cat  ?id VBD))
 )
 ;------------------------------------------------------------------------------------------------------------------------
