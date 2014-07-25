
(defrule turf0
(declare (salience 5000))
(id-root ?id turf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wqNAcCAxiwa_BUmi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turf.clp 	turf0   "  ?id "  wqNAcCAxiwa_BUmi )" crlf))
)

;"turf","N","1.wqNAcCAxiwa_BUmi"
;Children are playing on the turf.
;--"2.GudaxOda_kA_mExAna"
;These horses are the champions of the turf.
;
(defrule turf1
(declare (salience 4900))
(id-root ?id turf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAsa_biCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turf.clp 	turf1   "  ?id "  GAsa_biCA )" crlf))
)

;"turf","V","1.GAsa_biCAnA"
;You have to turf the field.
;


;@@@ Added by Prachi Rathore[25-2-14]
;The boys were turfed off the bus.[oald]
;लडकों को बस से बाहर फेंक दिया  था . 
(defrule turf2
(declare (salience 5000))
(id-root ?id turf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  turf.clp 	turf2     "  ?id "  " ?id1 "  bAhara_PeMka_xe )" crlf))
)


;@@@ Added by Prachi Rathore[25-2-14]
;He was turfed out of the party.[oald]
;उसे पार्टी से बाहर फेंक दिया गया था . 
(defrule turf3
(declare (salience 5000))
(id-root ?id turf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turf.clp 	turf3   "  ?id " bAhara_PeMka_xe )" crlf))
)



