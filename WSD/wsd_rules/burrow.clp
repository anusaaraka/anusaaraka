;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-Feb-2014
;He burrowed down beneath the blankets.[oald]
;वह कम्बल के नीचे घुस गया
(defrule burrow2
(declare (salience 5000))
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 down)
(kriyA-beneath_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gusa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burrow.clp	burrow2  "  ?id "  " ?id1 "  Gusa_jA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-Feb-2014
;She burrowed her face into his chest.[oald]
;उसने उसका चेहरा उसके सीने पर रखा
(defrule burrow3
(declare (salience 5000))
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj face)
(kriyA-into_saMbanXI  ?id ?id2)
(id-word ?id1 into)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burrow.clp	burrow3  "  ?id "  " ?id1 "  para_raKa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-Feb-2014
;She burrowed in the drawer for a pair of socks.[oald]
;उसने मोजे का जोड़ा ढूढने के लिये दराज को खंगोला
(defrule burrow4
(declare (salience 5000))
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object  ?id ?))
(kriyA-in_saMbanXI  ?id ?id1)
(kriyA-for_saMbanXI  ?id ?)
(id-word =(+ ?id 1) in) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) ko_KaMgolA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burrow.clp	burrow4  "  ?id "  " (+ ?id 1) "  ko_KaMgolA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-Feb-2014
;He was afraid that they would burrow into his past.[oald]
;उसे डर था कि वह उसका अतीत खंगोलेंगे
(defrule burrow5
(declare (salience 5000))
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-word ?id1 past)
(id-word =(+ ?id 1) into)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) ko_KaMgola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burrow.clp	burrow5  "  ?id "  " (+ ?id 1) "  ko_KaMgola )" crlf))
)


;**********************DEFAULT RULES******************************

(defrule burrow0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burrow.clp 	burrow0   "  ?id "  bila )" crlf))
)

;"burrow","N","1.bila"
;Children like to catch rabbits from their burrows.
;
(defrule burrow1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burrow.clp 	burrow1   "  ?id "  Koxa )" crlf))
)

;"burrow","VT","1.KoxanA"
;Burrow through the forest
;
