;na wo, na hI, xUsarI ora
(defrule multi_word
(declare (salience 50))
?f1<-(manual_id-word-cat ?id0 ?w&na|xUsarI ?cat&NEG|QO)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&wo|hI|ora ?)
=>
        (retract ?f1 ?f2)
        (assert (manual_id-word-cat ?id0 ?w ?w1 ?cat))
;        (assert (manual_id-noun-vib-grp_ids ?id0 ?w ?w1 - 0 - ?id0 ?id1))
)
;-----------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
(defrule ke_[word]_meM
(declare (salience 30))
?f1<-(manual_id-word-cat ?id0 ?noun ?cat&NN|NNP)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&rUpa|bAre ?)
?f4<-(manual_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM ?)
=>
        (retract ?f1 ?f2 ?f3 ?f4)
        (assert (manual_id-word-cat ?id0 ?noun ke ?w meM  ?cat))
        (assert (manual_id-noun-vib-grp_ids ?id0 ?noun - ke ?w meM - ?id0 ?id1 ?id2 ?id3))
)
;-----------------------------------------------------------------------------------------
;ke liye , ke lie ,ke pariwaH ,ke sAWa
(defrule ke_[word]
(declare (salience 20))
?f1<-(manual_id-word-cat ?id0 ?noun ?cat&NN|NNP)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(manual_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&pariwaH|lie|liye|sAWa|aMwargawa ?)
=>
 (retract ?f1 ?f2 ?f3)
 (assert (manual_id-word-cat ?id0 ?noun ke ?w ?cat))
 (assert (manual_id-noun-vib-grp_ids ?id0 ?noun - ke ?w - ?id0 ?id1 ?id2))
)
;-----------------------------------------------------------------------------------------
(defrule single_vib
(declare (salience 10))
?f1<-(manual_id-word-cat ?id0 ?noun ?cat&NN|NNP)
?f2<-(manual_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM ?)
=>
 (retract ?f1 ?f2)
 (assert (manual_id-word-cat ?id0 ?noun ?vib ?cat))
 (assert (manual_id-noun-vib-grp_ids ?id0 ?noun - ?vib - ?id0 ?id1))
)
;-----------------------------------------------------------------------------------------
