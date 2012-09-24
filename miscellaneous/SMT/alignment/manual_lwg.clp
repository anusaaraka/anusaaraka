;This file is written by Maha Laxmi and Shirisha Manju

;sort_grp function sorts  the given ids and make each id unique i.e; if i/p [9 3 4 3 5] ==> o/p [3 4 5 9]
(deffunction sort_grp($?ids)
        (bind ?len (length $?ids))
        (bind $?new_ids (create$ ))
        (bind $?ids (sort > $?ids))
        (while (> (length $?ids) 0)
        	(bind ?id (nth$ 1 $?ids))
                (bind $?ids (delete-member$ $?ids ?id))
                (bind $?new_ids (create$ $?new_ids ?id))
        )
       (bind $?ids $?new_ids)
)
;----------------------------------------------------------------------------------------------------------------
;It is mainly through light and the sense of vision that we know and interpret the world around us.
;Man tran :: muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran :: yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
(defrule multi_word0
(declare (salience 100))
?f0<-(manual_id-word-cat ?id0 ?w&apane ?cat)
?f1<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?w1&cAroM ?)
?f2<-(manual_id-word-cat ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora ?)
(id-node-word-root ?id0 ? $?word1 - $?root)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w  - $?root - ?w1 ?w2 - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;na wo, na hI, xUsarI ora
(defrule multi_word
(declare (salience 100))
?f1<-(manual_id-word-cat ?id0 ?w&na|xUsarI|cAroM|ya ?cat&NEG|QO|QC)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&wo|hI|ora ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w ?w1 - 0 - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;अबतक
;However, we shall restrict our discussion to the special case of curved surfaces, that is, spherical surfaces.
(defrule multi_word1
(declare (salience 100))
?f1<-(manual_id-word-cat ?id0 ?w ?cat)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&waka RP)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w  - ?w1 - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
;;Axya vicArakoM jEse araswU kI bala ke viRaya meM saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
(defrule ke_[word]_meM
(declare (salience 90))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&rUpa|bAre|viRaya|AXAra ?)
?f4<-(manual_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM|para ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2 ?f3 ?f4)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w meM - ?id0 ?id1 ?id2 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule kI_[word]_meM
(declare (salience 90))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) kI ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&wulanA ?)
?f4<-(manual_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2 ?f3 ?f4)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - kI ?w meM - ?id0 ?id1 ?id2 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;ke liye , ke lie ,ke pariwaH ,ke sAWa,[besides --> ke awirikwa]
;xravyamAna kenxra kI pariBARA [jAnane ke bAxa] , aba hama isa sWiwi meM hEM ki kaNoM ke eka nikAya ke lie isake BOwika mahawva kI vivecanA kara sakeM.
;It is mainly through light and the sense of vision that we know and interpret the world around us.--> muKya rUpa se prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama apane cAroM ora ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM
;There is no loss of energy due to friction. [ke kAraNa]
;The apparent flattening (oval shape) of the sun at sunset and sunrise is also due to the same phenomenon.--->sUryAswa waWA [sUryoxaya ke samaya] sUrya kA ABAsI capatApana (aNdAkAra Akqwi) BI isI pariGatanA ke kAraNa hI hE.
(defrule ke_[word]
(declare (salience 80))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&pariwaH|lie|liye|sAWa|aMwargawa|ora|awirikwa|bAxa|kAraNa|samaya|xvArA ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
 	(retract ?f1 ?f2 ?f3)
 	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (28-08-12)
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE
(defrule word_[hyphen]_word
(declare (salience 80))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) - SYM)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
(not (retract_manual_fact ?id2))
=>
        (retract ?f1 ?f2 ?f3)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun ?w  - $?root - 0 - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;Axya vicArakoM jEse araswU kI bala ke viRaya meM saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
;yaxi Apa apanI BujAoM ko Pira SarIra ke pAsa le AyeM wo koNIya cAla Pira se baDZa jAwI hE -- If you bring back your arms closer to your body, the angular speed increases again. 
(defrule single_vib
(declare (salience 70))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
 	(retract ?f1 ?f2)
 	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?vib - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE @PUNCT-Dot
;Eng sen : Fig. 3.2 (b) shows the position-time graph of such a motion.
;Man sen : isa prakAra kI gawi kA sWiwi - samaya grAPa ciwra 3.2 @PUNCT-OpenParen @b @PUNCT-ClosedParen [meM] xiKalAyA gayA hE  @PUNCT-Dot
(defrule single_vib1
(declare (salience 70))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|QC)
(id-node-word-root ?id0 ? $? - $?root)
(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen SYM)
(manual_id-word-cat ?id2 @PUNCT-ClosedParen SYM)
(test (> ?id2 ?id1))
?f3<-(manual_id-word-cat ?id3&:(=(+ ?id2 1) ?id3) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA ?)
(not (retract_manual_fact ?id0))
=>
	(retract ?f1 ?f3)
	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun ?vib - $?root - ?vib - ?id0 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(19-9-12)
;We have seen earlier that the magnitude of displacement may be different from the actual path length.
;hama yaha xeKa cuke hEM ki visWApana kA parimANa vAswavika [paWa - lambAI se] Binna ho sakawA hE.
(defrule single_vib2
(declare (salience 65))
?f0<-(manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?vib - $?ids ?id)
?f1<-(manual_id-word-cat ?id1&:(=(+ ?id 1) ?id1) ?vib1&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA ?)
=>
	(retract ?f0 ?f1)
	(if (eq ?vib 0) then
		(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun ?vib1 - $?root - ?vib1 - $?ids ?id ?id1))
	else
		(bind ?n_vib (create$ ?vib ?vib1))
		(bind $?word (delete-member$ $?noun ?vib))
		(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?word ?n_vib - $?root - ?n_vib - $?ids ?id ?id1))
	)
)
;----------------------------------------------------------------------------------------------------------------
(defrule verb_grouping
(declare (salience 60))
(manual_id-node-word-root-tam  ?m_h_id   VGF|VGNN|VGNF  $?mng - $?root - $?tam)
(head_id-grp_ids ?m_h_id ?mid $?ids)
(manual_id-word-cat ?mid $?word ?cat)
(not (lwg_done ?mid))
(not (retract_manual_fact ?mid))
=>
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?root - $?tam - ?mid $?ids))
        (loop-for-count (?i 1 (length (create$ ?mid $?ids)))
		        (bind ?j (nth$ ?i (create$ ?mid $?ids)))
			(assert (retract_manual_fact ?j))
	)
         (assert (lwg_done ?mid))
) 
;----------------------------------------------------------------------------------------------------------------
(defrule change_remaining_facts
(declare (salience 55))
(manual_id-word-cat ?mid $?word ?cat)
(id-node-word-root ?mid ? $?word1 - $?root)
(not (retract_manual_fact ?mid))
=>
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word1 - $?root - 0 - ?mid))
)
;----------------------------------------------------------------------------------------------------------------
;Anu tran : [isa prakAra] prekRaka walI para UparI sawaha para waWA PUla lAla rafga se inxraXanuRa ko xeKawA hE.
;Eng sen  : Though the reason for [appearance] of spectrum is now common knowledge, it was a matter of much debate in the history of physics.
;Man tran : yaxyapi spektrama kA [xiKAI xenA] aba eka sAmAnya jFAna kI bAwa hE @PUNCT-Comma  paranwu BOwikI ke iwihAsa meM yaha eka bade vAxa - vivAxa kA viRaya WA.

;Eng sen :Presently, we are dealing with motion along a straight line (also called rectilinear motion) only.
;Man tran :aXyAya meM hama eka [sarala reKA ke] anuxiSa sarala gawi  @PUNCT-OpenParen jise hama reKIya gawi kahawe hEM @PUNCT-ClosedParen  ke viRaya meM hI paDefge 
;Anu tran : aBI aBI, hama sirPa eka sIXI lAina ke kinAre (BI sIXI reKAoM se GirA huA gawi bulA) gawi se sambanXiwa .

;Eng sen : It is [mainly] through light and the sense of vision that we know and interpret the world around us.
;Man tran : [muKya rUpa se] prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran : yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.

;Anu tran : warafga kI upasWiwi ke lie kAraNa sAXAraNa pratiBA aba hE magara, vaha BOwika vijFAna ke vqwwAnwa meM bahuwa bahasa kA viRaya WA.
;Eng sen : There are two things that we can intuitively mention about light from common experience.
;Man tran :apane sAmAnya anuBava se hama prakASa ke viRaya meM apanI anwarxqRti xvArA xo bAwoM kA [ulleKa kara] sakawe hEM.
(defrule grouping_using_dic
(declare (salience 50))
(anu_id-manual_ids-sep-mng ? $?mids - $?mng)
?f0<-(manual_id-word-cat ?mid ?w&~kara ?cat&~VIB)
(test (neq (member$ ?mid $?mids) FALSE))
(not (manual_id-word-cat ?mid1&:(and (member$ ?mid1 $?mids) (> ?mid1 ?mid))  ?w1&~kara ?cat1&~VIB))
=>
        (retract ?f0)
        (assert (manual_id-word-cat ?mid $?mng ?cat))
        (assert (grp_head_id-grp_ids-mng ?mid - $?mids - $?mng))
        (loop-for-count (?i 1 (length $?mids))
                (bind ?j (nth$ ?i (create$ $?mids)))
                (assert (retract_manual_fact ?j))
        )
)
;----------------------------------------------------------------------------------------------------------------
(defrule add_grp_mng
(declare (salience 5))
?f1<-(grp_head_id-grp_ids-mng ?mid - $? ?mid1 $? - $?mng)
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?root - $?vib - $?grp)
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid1 ?cat1 $?word1 - $?root1 - $?vib1 - $?grp1)
(test (neq ?mid ?mid1))
=>
	(retract ?f0 ?f2)	
	(bind $?s_grp (create$ ))
	(if (neq (implode$ (create$ $?vib)) "0") then
		(bind $?n_word (create$ $?word $?vib $?word1))
		(bind $?n_root (create$ $?word $?vib $?root1))
	else
		(bind $?n_word (create$ $?word  $?word1))
                (bind $?n_root (create$ $?word  $?root1))
	)
	(bind $?grp_ids (sort > $?grp $?grp1))
	(loop-for-count (?i 1 (length $?grp_ids))
                (bind ?j (nth$ ?i $?grp_ids))
                (if (eq (member$ ?j $?s_grp) FALSE) then
                        (bind $?s_grp (create$ $?s_grp  ?j))
                )
        )
	(if (neq (implode$ (create$ $?vib1)) "0") then
		(bind $?w (create$ $?n_word $?vib1))
	else	(bind $?w (create$ $?n_word ))
	)
	(if (eq $?w $?mng) then
		(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?mng - $?mng - 0 - $?s_grp))
 	else
        	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?n_word - $?n_root - $?vib1 - $?s_grp))
	)
)
