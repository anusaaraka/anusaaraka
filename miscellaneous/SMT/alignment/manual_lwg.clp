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
;Eng sen  :: [Thus] the observer sees a rainbow with red color on the top and violet on the bottom. 
;Man tran :: [isa prakAra] prekRaka inxraXanuRa ke SIrRa para lAla varNa Ora pEnxI para bEfganI varNa xeKawA hE .
;Anu tran :: [isa prakAra] prekRaka walI para UparI sawaha para waWA PUla lAla rafga se inxraXanuRa ko xeKawA hE.
;Eng sen  :: Though the reason for [appearance] of spectrum is now common knowledge, it was a matter of much debate in the history of physics.
;Man tran :: yaxyapi spektrama kA [xiKAI xenA] aba eka sAmAnya jFAna kI bAwa hE @PUNCT-Comma  paranwu BOwikI ke iwihAsa meM yaha eka bade vAxa - vivAxa kA viRaya WA.
;Anu tran :: warafga kI upasWiwi ke lie kAraNa sAXAraNa pratiBA aba hE magara, vaha BOwika vijFAna ke vqwwAnwa meM bahuwa bahasa kA viRaya WA.
;Eng sen : There are two things that we can intuitively mention about light from common experience.
;Man tran :apane sAmAnya anuBava se hama prakASa ke viRaya meM apanI anwarxqRti xvArA xo bAwoM kA [ulleKa kara] sakawe hEM.
(defrule grouping_using_dic
(declare (salience 70))
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
		(if (neq ?j ?mid) then
                        (assert (retract_manual_fact ?j))
                )
        )
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-08-12)
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE @PUNCT-Dot
(defrule vib_with_punct_for_dic
(declare (salience 65))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN)
(id-node-word-root ?id0 ? $? - $?root)
(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen SYM)
(manual_id-word-cat ?id2 @PUNCT-ClosedParen SYM)
(test (> ?id2 ?id1))
(anu_id-manual_ids-sep-mng ?anu_id ?id3&:(=(+ ?id2 1) ?id3) $?ids - $?vib)
=>
        (retract ?f1)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun $?vib - $?root - $?vib - ?id0 ?id3 $?ids))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (8-09-12)
;It is mainly through light and the sense of vision that we know and interpret the world around us.
;Man tran : muKya rUpa se prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran : yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
(defrule vib_for_dic
(declare (salience 64))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|PRP)
(id-node-word-root ?id0 ? $? - $?root)
(anu_id-manual_ids-sep-mng ?anu_id ?id1&:(=(+ ?id0 1) ?id1) $?ids - $?vib)
=>
        (retract ?f1)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun $?vib - $?root - $?vib - ?id0 ?id1 $?ids))
)
;----------------------------------------------------------------------------------------------------------------
;It is mainly through light and the sense of vision that we know and interpret the world around us.
;Man tran :: muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran :: yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
;(defrule multi_word0
;(declare (salience 60))
;?f0<-(manual_id-word-cat ?id0 ?w&apane ?cat)
;?f1<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?w1&cAroM ?)
;?f2<-(manual_id-word-cat ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora ?)
;(id-node-word-root ?id0 ? $?word1 - $?root)
;=>
;        (retract ?f0 ?f1 ?f2)
;        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w  - $?root - ?w1 ?w2 - ?id0 ?id1 ?id2))
;)
;----------------------------------------------------------------------------------------------------------------
;na wo, na hI, xUsarI ora
(defrule multi_word
(declare (salience 50))
?f1<-(manual_id-word-cat ?id0 ?w&na|xUsarI|cAroM|ya ?cat&NEG|QO|QC)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&wo|hI|ora ?)
=>
        (retract ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w ?w1 - 0 - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;अबतक
;However, we shall restrict our discussion to the special case of curved surfaces, that is, spherical surfaces.
(defrule multi_word1
(declare (salience 50))
?f1<-(manual_id-word-cat ?id0 ?w ?cat)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&waka RP)
=>
        (retract ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w  - ?w1 - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (22-08-12)
;First, that it travels with enormous speed and second, that it travels in a straight line.
;;enormous == awyaXika wIvra
;(defrule multi_word2
;(declare (salience 50))
;?f1<-(manual_id-word-cat ?id0 ?w&awyaXika ?cat&INTF)
;?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1 JJ)
;=>
;        (retract ?f1 ?f2)
;        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w ?w1 - 0 - ?id0 ?id1))
;)
;----------------------------------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
;;Axya vicArakoM jEse araswU kI bala ke viRaya meM saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
(defrule ke_[word]_meM
(declare (salience 30))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&rUpa|bAre|viRaya|AXAra ?)
?f4<-(manual_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM|para ?)
=>
        (retract ?f1 ?f2 ?f3 ?f4)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w meM - ?id0 ?id1 ?id2 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule kI_[word]_meM
(declare (salience 30))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) kI ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&wulanA ?)
?f4<-(manual_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM ?)
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
(declare (salience 20))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&pariwaH|lie|liye|sAWa|aMwargawa|ora|awirikwa|bAxa|kAraNa|samaya|xvArA ?)
=>
 	(retract ?f1 ?f2 ?f3)
 	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (28-08-12)
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE
(defrule word_[hyphen]_word
(declare (salience 20))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) - SYM)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w ?)
=>
        (retract ?f1 ?f2 ?f3)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun ?w  - $?root - 0 - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;Axya vicArakoM jEse araswU kI bala ke viRaya meM saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
;yaxi Apa apanI BujAoM ko Pira SarIra ke pAsa le AyeM wo koNIya cAla Pira se baDZa jAwI hE -- If you bring back your arms closer to your body, the angular speed increases again. 
(defrule single_vib
(declare (salience 10))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP|PRP|RB)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA ?)
=>
 	(retract ?f1 ?f2)
 	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?vib - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE @PUNCT-Dot
(defrule single_vib1
(declare (salience 5))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN)
(id-node-word-root ?id0 ? $? - $?root)
(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen SYM)
(manual_id-word-cat ?id2 @PUNCT-ClosedParen SYM)
(test (> ?id2 ?id1))
?f3<-(manual_id-word-cat ?id3&:(=(+ ?id2 1) ?id3) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA ?)
=>
	(retract ?f1 ?f3)
	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun ?vib - $?root - ?vib - ?id0 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
(defrule verb_grouping
(declare (salience 5))
(manual_id-node-word-root-tam  ?m_h_id   VGF|VGNN|VGNF  $?mng - $?root - $?tam)
(head_id-grp_ids ?m_h_id ?mid $?ids)
(manual_id-word-cat ?mid $?word ?cat)
(not (lwg_done ?mid))
=>
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?root - $?tam - ?mid $?ids))
        (loop-for-count (?i 1 (length (create$ ?mid $?ids)))
		        (bind ?j (nth$ ?i (create$ ?mid $?ids)))
			(assert (retract_manual_fact ?j))
	)
         (assert (lwg_done ?mid))
) 
;----------------------------------------------------------------------------------------------------------------
(defrule retract_fact
(declare (salience 80))
(retract_manual_fact ?mid)
?f<-(manual_id-word-cat ?mid $?)
=>
	(retract ?f)
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule retract_fact1
(declare (salience 5))
(manual_id-cat-word-root-vib-grp_ids ?mid ? $? - $? - $? - $? ?id $?)
?f0<-(manual_id-word-cat ?id $?word ?cat)
=>
	(retract ?f0)
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;It is mainly through light and the sense of vision that we know and interpret the world around us.
(defrule add_grp_mng
(declare (salience 4))
?f1<-(grp_head_id-grp_ids-mng ?mid - $?grp_ids - $?mng)
(manual_id-word-cat ?mid $? $?word $? ?cat)
(id-node-word-root ?mid ?cat $?word - $?root)
(not (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $? - $? - $? - $? ?mid $?))
=>
       (retract ?f1)
       (assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?mng - $?root - 0 - $?grp_ids))
)
;----------------------------------------------------------------------------------------------------------------
;For example, the colors observed due to a thin film of oil on water. 
(defrule change_remaining_facts
(declare (salience -10))
(manual_id-word-cat ?mid $?word ?cat)
(id-node-word-root ?mid ? $?word1 - $?root)
(test (neq ?cat SYM))
=>
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word1 - $?root - 0 - ?mid))
)
;----------------------------------------------------------------------------------------------------------------
