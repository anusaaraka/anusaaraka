;It is mainly through light and the sense of vision that we know and interpret the world around us.
;Man tran :: muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran :: yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
(defrule multi_word0
(declare (salience 60))
?f0<-(manual_id-word-cat ?id0 ?w&apane ?cat)
?f1<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?w1&cAroM ?)
?f2<-(manual_id-word-cat ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora ?)
(id-node-word-root ?id0 ? $?word1 - $?root)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w  - $?root - ?w1 ?w2 - ?id0 ?id1 ?id2))
)

;na wo, na hI, xUsarI ora
(defrule multi_word
(declare (salience 50))
?f1<-(manual_id-word-cat ?id0 ?w&na|xUsarI|cAroM|ya ?cat&NEG|QO|QC)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&wo|hI|ora ?)
=>
        (retract ?f1 ?f2)
;        (assert (manual_id-word-cat ?id0 ?w ?w1 ?cat))
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w ?w1 - 0 - ?id0 ?id1))
;        (assert (manual_id-noun-vib-grp_ids ?id0 ?w ?w1 - 0 - ?id0 ?id1))
)

;अबतक
(defrule multi_word1
(declare (salience 50))
?f1<-(manual_id-word-cat ?id0 ?w&aba|taba|jaba|kaba ?cat&PRP)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&waka RP)
=>
        (retract ?f1 ?f2)
;        (assert (manual_id-word-cat ?id0 ?w ?w1 ?cat))
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w ?w1 - 0 - ?id0 ?id1))
;        (assert (manual_id-noun-vib-grp_ids ?id0 ?w ?w1 - 0 - ?id0 ?id1))
)

;-----------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
;;Axya vicArakoM jEse araswU kI bala ke viRaya meM saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.

(defrule ke_[word]_meM
(declare (salience 30))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&rUpa|bAre|viRaya ?)
?f4<-(manual_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM ?)
=>
        (retract ?f1 ?f2 ?f3 ?f4)
 ;       (assert (manual_id-word-cat ?id0 $?noun ke ?w meM  ?cat))
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w meM - ?id0 ?id1 ?id2 ?id3))
)
;-----------------------------------------------------------------------------------------
;ke liye , ke lie ,ke pariwaH ,ke sAWa,[besides --> ke awirikwa]
;xravyamAna kenxra kI pariBARA [jAnane ke bAxa] , aba hama isa sWiwi meM hEM ki kaNoM ke eka nikAya ke lie isake BOwika mahawva kI vivecanA kara sakeM.
;It is mainly through light and the sense of vision that we know and interpret the world around us.--> muKya rUpa se prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama apane cAroM ora ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM

(defrule ke_[word]
(declare (salience 20))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&pariwaH|lie|liye|sAWa|aMwargawa|ora|awirikwa|bAxa|kAraNa ?)
=>
 (retract ?f1 ?f2 ?f3)
 ;(assert (manual_id-word-cat ?id0 $?noun ke ?w ?cat))
 (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w - ?id0 ?id1 ?id2))
)
;-----------------------------------------------------------------------------------------
;Axya vicArakoM jEse araswU kI bala ke viRaya meM saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
(defrule single_vib
(declare (salience 10))
?f1<-(manual_id-word-cat ?id0 $?noun ?cat&NN|NNP|PRP)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse ?)
=>
 (retract ?f1 ?f2)
 ;(assert (manual_id-word-cat ?id0 $?noun ?vib ?cat))
 (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?vib - ?id0 ?id1))
)
;-----------------------------------------------------------------------------------------
(defrule verb_grouping
(manual_id-node-word-root-tam  ?m_h_id   VGF|VGNN  $?mng - $?root - $?tam)
(head_id-grp_ids ?m_h_id ?mid $?ids)
(manual_id-word-cat ?mid $?word ?cat)
(not (lwg_done ?mid))
=>
;	(assert (manual_id-word-cat ?mid $?mng ?cat))
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?root - $?tam - ?mid $?ids))
        (loop-for-count (?i 1 (length (create$ ?mid $?ids)))
		        (bind ?j (nth$ ?i (create$ ?mid $?ids)))
			(assert (retract_manual_fact ?j))
	)
         (assert (lwg_done ?mid))
) 
;-----------------------------------------------------------------------------------------
(defrule retract_fact
(retract_manual_fact ?mid)
?f<-(manual_id-word-cat ?mid $?)
=>
	(retract ?f)
)
;-----------------------------------------------------------------------------------------
(defrule change_remaining_facts
(declare (salience -10))
(manual_id-word-cat ?mid $?word ?cat)
(id-node-word-root ?mid ? $?word1 - $?root)
=>
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word1 - $?root - 0 - ?mid))
)
