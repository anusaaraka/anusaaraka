 ; This file is written by Shirisha Manju (19-06-12)
 (defglobal ?*count*  = 0)

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 ;----------------------------------------------------------------------------------------------------------------------- 
 (deffunction get_no(?node ?o_cat ?m_cat)
	(bind ?no (sub-string (+ (length ?o_cat) 1 ) (length ?node) ?node ))
        (bind ?no (explode$ (str-cat ?m_cat ?no)))
	(bind ?new_no ?no)
 )

 ;========================================= Structure correction rules ==================================================
 ;Suggested by Soma Mam (17-9-16)
 ;Is your father in government service?
 ;Before : kyA ApakI sarakArI sevA meM piwA hE?   After: kyA ApakA piwA sarakArI sevA meM hE?
 (defrule grp_PRP_and_NP_as_one_chunk
?f0<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?pre ?NP ?NP1 $?post)
 ?f1<-(Node-Category  ?NP  NP)
 (Node-Category  ?NP1  NP)
 ?f2<-(Head-Level-Mother-Daughters ? ? ?NP ?PRP )
 (Node-Category  ?PRP   PRP$)
 ?f4<-(Head-Level-Mother-Daughters ?h1 ?l1 ?NP1 ?np $?p)
 (Node-Category  ?np  NP)
 ?f3<-(Head-Level-Mother-Daughters ? ?l2 ?np ?np1)
 (Head-Level-Mother-Daughters ? ? ?np1 ?id )
 (id-sd_cat ?id ?)
  =>
	(retract ?f0 ?f1 ?f2 ?f3 ?f4)
	(assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?pre ?NP1 $?post))
	(assert (Head-Level-Mother-Daughters ?h1 ?l1 ?NP1 ?PRP ?np1 $?p))
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
 (not (modified_cat_with_dic ?id)) ; Humans have always been [curious] about the world around them.
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
 ;One can reach kumbhalgarh by road from Udaipur [(84km)] and ranakpur which is [18km] from kumbhalgarh. 
 (defrule modify_cat
 (parserid-word ?id ?word)
 (test (or (numberp ?word) (numberp (string-to-field (sub-string 1 1 ?word)))))
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
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (23-09-14)
 ;first daughter of NP is NNP and the daughter of NNP is the 1st word of the sentence and the word exists as an adjective in the dictionary
 ; then modify the NNP as JJ 
 ;[Big] egos are big shields. 	Before: garBAvasWA_kA_anwima caraNa aham badI DAleM hEM.	After: bade aham badI DAleM hEM.
 (defrule modify_NNP_as_JJ
 ?f<-(Head-Level-Mother-Daughters ?h ?l ?NP ?NNP ?NN $?p)
 (Node-Category ?NP NP)
 ?f1<-(Node-Category ?NNP NNP)
 ?f2<-(Head-Level-Mother-Daughters ?head ?l1 ?NNP P1)
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat (lowcase ?head) "_adjective")) "FALSE"))
 ?f3<-(id-sd_cat  P1  ?cat)
 =>
	(retract ?f ?f1 ?f2 ?f3)
	(bind ?jj (get_no ?NNP NNP JJ))
	(assert (Node-Category ?jj JJ))
	(assert (Head-Level-Mother-Daughters ?h ?l ?NP ?jj ?NN $?p))
 	(assert (Head-Level-Mother-Daughters ?head ?l1 ?jj P1))
	(assert (id-sd_cat  P1 JJ))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Suggested by Chaitanya Sir (23-09-14)
 ; If VP => VP1 CC VP2 and VP2 => whenever  then 
 ;      make CC and VP2 as the daughters of the last NP daughter of VP1
 ; We can do it next week or [whenever]. 
 ; Before: hama agale sapwAha yaha kara sakawe hEM yA jaba_kaBI.
 ; After : hama agalA sapwAha yA jaba kaBI yaha kara sakawe hEM.
 (defrule modify_VBZ_as_NP
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?VP $?p ?VP1 ?CC ?VP2 $?p1)
 (Node-Category ?VP1 VP)
 (Node-Category ?CC CC) 
 ?f2<-(Node-Category ?VP2 VP)
 ?f3<-(Head-Level-Mother-Daughters whenever ?l ?VP2 ?VBZ)
 ?f4<-(Node-Category ?VBZ ?cat) 
 ?f5<-(Head-Level-Mother-Daughters whenever ?l1 ?VBZ ?id)
 (parserid-word ?id whenever)
 (Head-Level-Mother-Daughters ? ? ?VP1 $? ?VP3)
 (Node-Category ?VP3 VP)
 (Head-Level-Mother-Daughters ? ? ?VP3 $? ?NP)
 (Node-Category ?NP NP)
 ?f1<-(Head-Level-Mother-Daughters ?h2 ?l2 ?NP $?post ?NN )
 (Head-Level-Mother-Daughters ? ? ?NN ?id1)
 (id-sd_cat  ?id1 NN|NNS)
 =>
	(retract ?f ?f1 ?f2 ?f3 ?f4 ?f5)
	(assert (Head-Level-Mother-Daughters ?h ?lvl ?VP $?p ?VP1))
	(bind ?np (get_no ?VP2 VP NP))
	(assert (Node-Category ?np NP))
 	(assert (Head-Level-Mother-Daughters ?h2 ?l2 ?NP $?post ?NN ?CC ?np $?p1))
	(bind ?nn (get_no ?VBZ ?cat NN))
	(assert (Node-Category ?nn NN))
 	(assert (Head-Level-Mother-Daughters whenever ?l ?np ?nn))
 	(assert (Head-Level-Mother-Daughters whenever ?l1 ?nn ?id))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by krithika (19-11-14)
 ;The industry is in [terminal] decline. 
 ; If NP first daughter is NN whose value is NN then modify it as JJ
 (defrule modify_NN_as_JJ
 ?f0<-(Head-Level-Mother-Daughters ?h ?l ?NP ?N1 ?N2 $?pre )
 (Node-Category ?NP NP)
 ?f1<-(Node-Category ?N1 NN)
 ?f2<- (Head-Level-Mother-Daughters terminal ?l1 ?N1 ?id)
 ?f3<-(id-sd_cat  ?id NN)
 =>
	(retract ?f0 ?f1 ?f2 ?f3)
	(bind ?jj (get_no ?N1 NN JJ))
	(assert (Head-Level-Mother-Daughters ?h ?l ?NP ?jj ?N2 $?pre ))
	(assert (Node-Category ?jj JJ))
	(assert (Head-Level-Mother-Daughters terminal ?l1 ?jj ?id))
	(assert (id-sd_cat  ?id JJ))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Suggested by Chaitanya Sir (09-09-15)
 ;The subconscious mind is a composite of everything one sees, hears and any information the mind collects that it cannot otherwise [consciously]process to make meaningful sense.
 (defrule modify_VB_as_RB
 ?f1<-(Head-Level-Mother-Daughters consciously ?l ?VB ?id)
 ?f2<-(Node-Category ?VB VB)
 ?f3<-(id-sd_cat ?id VB)
 ?f<-(Head-Level-Mother-Daughters consciously ?l1 ?mot $?p ?VB $?po)
 =>
	(retract ?f ?f1 ?f2 ?f3)
	(bind ?rb (get_no ?VB VB RB))
	(assert (Head-Level-Mother-Daughters consciously ?l ?rb ?id ))
	(assert (Node-Category ?rb RB))
	(assert (id-sd_cat  ?id RB))
	(assert (Head-Level-Mother-Daughters consciously ?l1 ?mot $?p ?rb $?po))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Bhagyashri Kulkarni 14-9-16
 ; He cut himself a great thick slice of cake. 
 (defrule modify_JJ_as_RB
 ?f1<-(Head-Level-Mother-Daughters ?h ?l $?p ?JJ ?JJ1 $?p1)
 ?f2<-(Node-Category ?JJ JJ)
 (Node-Category ?JJ1 JJ)
 ?f0<-(Head-Level-Mother-Daughters great ?l1 ?JJ ?id)
 ?f3<-(id-sd_cat ?id JJ)
 =>
        (retract ?f0 ?f1 ?f2 ?f3)
        (bind ?rb (get_no ?JJ JJ RB))
        (assert (Head-Level-Mother-Daughters ?h ?l $?p ?rb ?JJ1 $?p1 ))
        (assert (Node-Category ?rb RB))
        (assert (id-sd_cat  ?id RB))
        (assert (Head-Level-Mother-Daughters great ?l1 ?rb ?id))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Suggested by Chaitanya Sir (02-03-16)
 ;Humans have always been curious about the world around them.
 (defrule modify_VBN_as_JJ
 ?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?VP ?VBN $?d)
 (Node-Category ?VP VP)
 ?f1<-(Node-Category ?VBN VBN)
 ?f2<-(Head-Level-Mother-Daughters ?h ?l ?VBN $?post ?id)
 (not (word-morph (original_word ?head) (root ?root)(category	verb) ))
 ?f3<-(id-sd_cat  ?id  ?cat1)
 =>
        (retract ?f0 ?f1 ?f2 ?f3 )
        (bind ?s (get_no ?VBN VBN JJ))
        (assert (Node-Category ?s JJ))
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?VP ?s $?d))
	(assert (Head-Level-Mother-Daughters ?h ?l ?s $?post ?id))
	(assert (id-sd_cat  ?id JJ))
	(assert (modified_cat_with_dic ?id))
 )
 ;======================================= LWG correction rules ===================================================
 ;The mother calmed the angry son.The jet zoomed across the sky.
 ;Who translated the sentence for the student? The snake who swallowed the rat hissed loudly.
 (defrule modify_VBN_as_VBD
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
 ;The Princess [was very surprised] to hear this.
 (defrule modify_ADJP_as_VP
 (Head-Level-Mother-Daughters ?h ?l1 ?VBD ?id)
 (parserid-word ?id ?word&is|was)
?f0<-(Head-Level-Mother-Daughters ?h ?l ?mot ?VBD ?ADJP )
 (Node-Category ?mot VP)
?f1<-(Node-Category ?ADJP ADJP)
?f2<-(Head-Level-Mother-Daughters ?w&surprised|worried|broken ?l2 ?ADJP $?d ?VBN $?d1) 
 =>
	(if (eq ?w surprised) then
		(retract ?f0 ?f1 ?f2)
		(bind ?Mot (get_no ?ADJP ADJP VP))
		(assert (Head-Level-Mother-Daughters ?h ?l ?mot ?VBD ?Mot))
		(assert (Node-Category ?Mot VP))
		(assert (Head-Level-Mother-Daughters ?w ?l2 ?Mot $?d ?VBN $?d1))
	
 	)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (23-09-14)
 ;if first_daughter of NP is NNP and the daughter of NNP is the 1st word of the sentence 
 ;     and the word exists as a verb in the dictionary then modify it as 
 ;	Root => S  , S => VP , VP => VB NP
 ;[Wrap] the book.              Before: SAla puswaka.                   After: puswaka lapetie.
 ;[Reserve] the seats for me.   Before: awirikwa niXi mere lie sIteM.   After: mere lie sIteM bacAie.
 ;[Do] get H.I.V. tested. 	Before: kara ne h.i.v. jAzca karavAyA.  After: h.i.v. jAzca karavAie.
 ;[May] I come in Sir?		
 (defrule modify_NNP_as_VB
 ?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?ROOT ?NP )
 (Node-Category ?ROOT ROOT)
 ?f4<-(Node-Category ?NP NP|S)
 ?f5<-(Head-Level-Mother-Daughters ?h ?l ?NP ?NP1 $?post ?punct)
 ?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?NP1 ?NNP)
 ?f2<-(Node-Category ?NNP NNP)
 ?f6<-(Node-Category ?NP1 ?cat)
 ?f3<-(Head-Level-Mother-Daughters ?h2 ?l2 ?NNP P1)
 (word-morph (original_word  ?h2)(category verb)(root ?root))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat (lowcase ?root) "_verb")) "FALSE"))
 ?f7<-(id-sd_cat  P1  ?cat1)
 (id-sd_cat  P2  ~VBZ) ;Gas is escaping from the pipe. Japan is a rising country. 
 ?f9<-(Head-Level-Mother-Daughters ?PUNCT ?l3 ?punct ?pid)
 ?f8<-(Node-Category ?punct ?p)
 =>
        (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
        (bind ?VP (get_no ?NP1 ?cat VP))
        (bind ?verb (get_no ?NNP NNP VB))
	(if (and (eq ?PUNCT PUNCT-QuestionMark) (eq (integerp (member$ ?h1 (create$ May))) TRUE)) then
		(retract ?f8 ?f9)
		(bind ?s (get_no ?NP NP SQ))
		(bind ?ps (get_no ?punct ?p P_QES))
		(assert (Node-Category ?ps P_QES))
	        (assert (Node-Category ?s SQ))
		(assert (Head-Level-Mother-Daughters ?PUNCT ?l3 ?ps ?pid))
		(assert (Head-Level-Mother-Daughters ?h1  ?l1 ?s  ?verb $?post ?ps))
	else
		(bind ?s (get_no ?NP NP S))
		(assert (Node-Category ?s S))
		(assert (Head-Level-Mother-Daughters ?h ?l ?s ?VP ?punct))
		(assert (Head-Level-Mother-Daughters ?h1  ?l1 ?VP ?verb $?post))
	)

        (assert (Node-Category ?VP VP))
       	(assert (Node-Category ?verb VB))
       	(assert (id-sd_cat  P1  VB))
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?ROOT ?s ))
;	(assert (Head-Level-Mother-Daughters ?h1  ?l1 ?VP ?verb $?post))
        (assert (Head-Level-Mother-Daughters ?h2 ?l2 ?verb P1))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (17-09-16)
 ;[Does] Lata come to your house? Before: kyA kyA lawA ApakA Gara AI huI?
 (defrule modify_NNP_as_VB1
 (Head-Level-Mother-Daughters ?head ?lvl ?ROOT ?SQ )
 (and (Node-Category ?ROOT ROOT) (Node-Category ?SQ SQ))
 ?f5<-(Head-Level-Mother-Daughters ?h ?l ?SQ ?NNP $?post ?punct)
 ?f2<-(Node-Category ?NNP NNP)
 (Head-Level-Mother-Daughters PUNCT-QuestionMark ? ?punct ?)
 ?f3<-(Head-Level-Mother-Daughters ?h2 ?l2 ?NNP P1)
 (test (member$ ?h2 (create$ Does Do)))
 ?f7<-(id-sd_cat  P1  ?cat)
 =>
        (retract ?f2 ?f3 ?f5 ?f7)
        (bind ?verb (get_no ?NNP NNP VB))

        (assert (Node-Category ?verb VB))
        (assert (id-sd_cat  P1  VB))
        (assert (Head-Level-Mother-Daughters ?h ?l ?SQ ?verb $?post ?punct))
        (assert (Head-Level-Mother-Daughters ?h2 ?l2 ?verb P1))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (26-08-16)
 ;if first_daughter of NP is NNP and the daughter of NNP is the 1st word of the sentence 
 ;     and the word exists as a verb in the dictionary then modify it as 
 ;	Root => S  , S => VP , VP => VBG
 ;[Running] is good for health. Before: saFcAlana svAsWya ke lie acCA hE. After: xOdanA svAsWya ke lie acCA hE.
 (defrule modify_NNP_as_VBG
 (declare (salience 1))
 ?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?ROOT ?NP )
 (Node-Category ?ROOT ROOT)
 ?f4<-(Node-Category ?NP ?c&NP|S)
 ?f5<-(Head-Level-Mother-Daughters ?h ?l ?NP ?NP1 $?post ?punct)
 ?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?NP1 ?NNP)
 ?f2<-(Node-Category ?NNP NNP)
 ?f6<-(Node-Category ?NP1 ?cat)
 ?f3<-(Head-Level-Mother-Daughters ?h2 ?l2 ?NNP P1)
 ?f7<-(id-sd_cat  P1  ?cat1)
 (word-morph (original_word  ?h2)(category verb)(root ?root)(suffix ing))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat (lowcase ?root) "_verb")) "FALSE"))
 =>
        (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7)
        (bind ?s (get_no ?NP ?c S))
        (bind ?VP (get_no ?NP1 ?cat VP))
        (bind ?verb (get_no ?NNP NNP VBG))

        (assert (Node-Category ?s S))
        (assert (Node-Category ?VP VP))
        (assert (Node-Category ?verb VBG))
        (assert (id-sd_cat  P1  VBG))
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?ROOT ?s ))
        (assert (Head-Level-Mother-Daughters ?h ?l ?s ?VP $?post ?punct))
        (assert (Head-Level-Mother-Daughters ?h1  ?l1 ?VP ?verb))
        (assert (Head-Level-Mother-Daughters ?h2 ?l2 ?verb P1))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (11-08-16)
 ;VBP EX: They are educated.    VBZ Ex: Ice gets formed.
 (defrule modify_cat_as_verb_or_adj_with_get_word
 (declare (salience 5))
 ?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot ?V ?ADJP)
 (and (Node-Category ?Mot VP) (Node-Category ?V VBZ|VBP))
 ?f1<-(Node-Category ?ADJP ADJP)
 ?f2<-(Head-Level-Mother-Daughters ?h ?l ?ADJP ?VBN)
 ?f3<-(Node-Category ?VBN VBN)
 ?f4<-(Head-Level-Mother-Daughters ?h1 ?l1 ?VBN ?id)
 ?f5<-(id-sd_cat  ?id  VBN)
  =>
	(if (eq (integerp (member$ ?head (create$ gets get getting))) TRUE) then ;Ice gets formed.
		(retract ?f0 ?f1 ?f2)
		(bind ?VP (get_no ?ADJP ADJP VP))
		(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot ?V ?VP))
		(assert (Node-Category ?VP VP))
		(assert (Head-Level-Mother-Daughters ?h ?l ?VP ?VBN))
	else ;They are educated.
		(retract ?f2 ?f3 ?f4 ?f5)
		(bind ?JJ (get_no ?VBN VBN JJ))
		(assert (Head-Level-Mother-Daughters ?h ?l ?ADJP ?JJ))
		(assert (Node-Category ?JJ JJ))
		(assert (Head-Level-Mother-Daughters ?h1 ?l1 ?JJ ?id))
		(assert (id-sd_cat  ?id  JJ))
	)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ;Suggested by Sukhada (12-08-16)
  ;She got the work done. Drink plenty of water and get urine culture done. 
  (defrule modify_NN_as_VP
  ?f0<-(Head-Level-Mother-Daughters ?head&get|got|getting ?lvl ?Mot ?V ?NP)
  (and (Node-Category ?Mot VP) (Node-Category ?V VBD|VBZ|VB))
  ?f1<-(Node-Category ?NP NP)
  ?f2<-(Head-Level-Mother-Daughters ?h ?l ?NP ?NP1 ?VP)
  (Node-Category ?VP VP)
  (Head-Level-Mother-Daughters ? ? ?VP ?VBN)
  (Node-Category ?VBN VBN)
  =>
	(retract ?f0 ?f1 ?f2)
	(bind ?vp (get_no ?NP NP VP))
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot ?V ?vp))
	(assert	(Node-Category ?vp VP))
	(assert (Head-Level-Mother-Daughters ?h ?l ?vp ?NP1 ?VP))
  )



 ;==============================================================================================
 ;Suggested by Chaitanya Sir (24-03-14)
 ;There can be some confusion [regarding] the trailing zeros.
 (defrule modify_PP_daughter
 ?f0<-(Head-Level-Mother-Daughters ?h ?l ?PP ?daut ?np)
 (Node-Category ?PP PP)
 (Node-Category ?daut ?cat&~IN&~TO)
 ?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?daut ?id $?post)
 ?f2<-(Node-Category	?daut	?d)
 ?f3<-(id-sd_cat ?id ?c)
 =>
        (if (eq ?h regarding) then
                (retract ?f0 ?f1 ?f2 ?f3)
                (bind ?Mot (get_no ?daut ?cat IN))
                (assert (Head-Level-Mother-Daughters ?h ?l ?PP ?Mot ?np))
                (assert (Node-Category ?Mot IN))
                (assert (Head-Level-Mother-Daughters ?h1 ?l1 ?Mot ?id $?post))
		(assert (id-sd_cat ?id IN))
	else
		(printout t "Warning: PP daughter category problem "?h ": " ?cat crlf)

        )
 )

