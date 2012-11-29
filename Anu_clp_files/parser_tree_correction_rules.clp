 ; This file is written by Shirisha Manju (19-06-12)

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 
 (deffunction get_no(?node ?o_cat ?m_cat)
	(bind ?no (sub-string (+ (length ?o_cat) 1 ) (length ?node) ?node ))
        (bind ?no (explode$ (str-cat ?m_cat ?no)))
	(bind ?new_no ?no)
 )
 ;==========================================   Category correction rules =================================================
 ;Suggested by Chaitanya Sir (21-11-12)
 ;The figure [has been redrawn] in Fig. 3.6 choosing different scales to facilitate the calculation. 
 (defrule modify_JJ_as_VBN
 (Head-Level-Mother-Daughters has ? ?VP ?VB ?VP1 )
 (Node-Category  ?VP   VP)
 (Node-Category  ?VB   ?c&VBZ)
 (Node-Category  ?VP1  VP)
 (Head-Level-Mother-Daughters been ? ?VP1 ?VBN ?VP2)
 (Node-Category  ?VBN  VBN)
 (Node-Category  ?VP2  VP)
 ?f0<-(Head-Level-Mother-Daughters ?word ?l ?VP2 ?JJ $?post)
 ?f1<-(Node-Category  ?JJ   ?c1&JJ)
 ?f2<-(Head-Level-Mother-Daughters ?word ?l1 ?JJ ?id)
 (word-morph (original_word  ?word)(category verb)(suffix ?s&en|ing))
 (word-morph (original_word  ?word)(category adjective))
 ?f3<-(id-sd_cat  ?id  ?cat)
 =>
	(retract  ?f0 ?f1 ?f2 ?f3)
	(if (eq ?s en) then (bind ?cat VBN)
	else (bind ?cat VBG)
	)
	(bind ?new_VBN (get_no ?JJ ?c1 ?cat))
	(assert (Head-Level-Mother-Daughters ?word ?l ?VP2 ?new_VBN $?post))
	(assert (Node-Category  ?new_VBN   ?cat))
	(assert (Head-Level-Mother-Daughters ?word ?l1 ?new_VBN ?id))
	(assert (id-sd_cat  ?id  ?cat))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (26-06-12)
 ;All other engines involving irreversibility have lower efficiency than this .
 (defrule modify_ADVP_as_NP
 ?f0<-(Node-Category  ?ADVP   ADVP)
 ?f<-(Head-Level-Mother-Daughters ?word ?l1 ?ADVP ?RB)
 ?f1<-(Node-Category  ?RB   ?cat&RB)
 ?f2<-(Head-Level-Mother-Daughters ?word ?l2 ?RB ?id)
 ?f3<-(id-sd_cat  ?id  ?cat)
 (word-morph (original_word  ?word)(category ?cat1))
 (not (word-morph (original_word  ?word) (category adverb|I)))
 ?f4<-(Head-Level-Mother-Daughters ?h ?l $?pre ?ADVP $?pos)
 (test (neq ?h ?word))
 =>
        (retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
        (if (eq ?cat1 noun) then (bind ?cat1 NP))
        (bind ?NP (get_no ?ADVP ADVP NP))
        (bind ?NN (get_no ?RB ?cat NN))
        (assert (Head-Level-Mother-Daughters ?h ?l $?pre ?NP $?pos))
        (assert (Head-Level-Mother-Daughters ?word ?l ?NP ?NN))
        (assert (Node-Category ?NP NP))
        (assert (Node-Category ?NN NN))
        (assert (Head-Level-Mother-Daughters ?word ?l1 ?NN ?id))
        (assert (id-sd_cat  ?id NN))
 )
 ;------------------------------------------------------------------------------------------------------------------------
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
 ;======================================= LWG correction rules ===================================================

 ;The mother calmed the angry son.The jet zoomed across the sky.
 ;Who translated the sentence for the student? The snake who swallowed the rat hissed loudly.
 (defrule make_VBN_as_VBD
 (Head-Level-Mother-Daughters ?h ?l ?S $?a ?VP $?a1)
 (Node-Category ?S S|SQ)
 (Node-Category ?VP VP)
 ?f0<-(Head-Level-Mother-Daughters ?h1 ?l1 ?VP ?VBN $?d)
 ?f1<-(Node-Category ?VBN VBN)
 ?f2<-(Head-Level-Mother-Daughters ?h2 ?l2 ?VBN ?id)
 (test (eq ?h2 ?h));What have the students done?
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
