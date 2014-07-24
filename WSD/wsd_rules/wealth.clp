
;@@@ Added by Anita-12.12.2013
;She has risen from humble origins to immense wealth.
;वह नम्र मूल से बहुत अधिक संपन्नता को पहुँच चुकी है ।
(defrule wealth1
(declare (salience 5000))
(id-root ?id wealth)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 immense)
(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMpannawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wealth.clp    wealth1   "  ?id " saMpannawA )" crlf))
)   


;@@@ Added by Pramila(BU) on 04-03-2014
;He gave a wealth of examples.   ;shiksharthi
;उसने प्रचुर उदाहरण दिए.
(defrule wealth2
(declare (salience 5000))
(id-root ?id wealth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) pracura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wealth.clp	wealth2 "  ?id "  " (+ ?id 1) "  pracura  )" crlf))
)
;####################################default-rule###############################

;@@@ Added by Anita-14.12.2013
;During a successful business career, she accumulated a great amount of wealth.
;सफल व्यापारिक पेशे में उसने बहुत सारा धन इकट्ठा किया ।
(defrule wealth0
(id-root ?id wealth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  Xana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wealth.clp    wealth0   "  ?id "  Xana )" crlf))
)   
