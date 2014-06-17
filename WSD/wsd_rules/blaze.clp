
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;The sun blazed down from a clear blue sky.[oald]
;सूरज एक साफ नीले आसमान से चमक उठा.
(defrule blaze2
(declare (salience 5000))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 camaka_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blaze.clp	blaze2  "  ?id "  " ?id1 "  camaka_uTA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;The garden blazed with colour.[oald]
;बगीचा रंगो से चमक उठा
(defrule blaze3
(declare (salience 5000))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-word ?id1 colour|color)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blaze.clp 	blaze3   "  ?id "  camaka_uTA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;In the distance machine guns were blazing.[oald]
;थोड़ी दूरी पर मशीनी बन्दूकें लगातार चल रहीं थीं . 
(defrule blaze4
(declare (salience 5000))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-root ?sub gun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAwAra_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blaze.clp 	blaze4   "  ?id "  lagAwAra_cala )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)5-Feb-2014
;He blazed away at the men.[old example]
;वह लोगों पर भड़क उठा
(defrule blaze5
(declare (salience 5000))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 away)
;(kriyA-at_saMbanXI  ?id ?);uncomment if any conflict is found
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BadZaka_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blaze.clp	blaze5  "  ?id "  " ?id1 "  BadZaka_uTA )" crlf))
)


;*************************DEFAULT RULES*****************************

(defrule blaze0
(declare (salience 5000))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xahaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blaze.clp 	blaze0   "  ?id "  xahaka )" crlf))
)

;"blaze","N","1.xahaka"
;The blaze spread rapidly
;Raising blazes
;
(defrule blaze1
(declare (salience 4900))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xahaka_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blaze.clp 	blaze1   "  ?id "  xahaka_uTa )" crlf))
)

;"blaze","VT","1.xahaka_uTanA"
;He blazed away at the men
;The spaceship blazed out into space
;

;********************************EXAMPLES****************************

;He blazed away at the men
;The spaceship blazed out into space
;A huge fire was blazing in the fireplace.
;Within minutes the whole building was blazing.
;He rushed back into the blazing house.
;The sun blazed down from a clear blue sky.
;The garden blazed with colour.
;Her eyes were blazing with fury.
;The story was blazed all over the daily papers.
;In the distance machine guns were blazing.
;The story was blazed all over the daily papers.
