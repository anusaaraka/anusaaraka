
(defrule whirl0
(declare (salience 5000))
(id-root ?id whirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whirl.clp 	whirl0   "  ?id "  cakkara )" crlf))
)

;"whirl","N","1.cakkara"
;The dancers went round in a whirl of color.
;--"2.GatanAoM_kA_wAzwA{jalxI_jalxI_hone_vAlI}"
;They had an endless whirl of activities.
;
(defrule whirl1
(declare (salience 100))
(id-root ?id whirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whirl.clp 	whirl1   "  ?id "  cakkara_KA )" crlf))
)

;"whirl","VTI","1.cakkara_KAnA"
;The merry go round whirled suddenly.
;

;@@@ Added by Pramila(Banasthali University) on 12-03-2014
;A paper whirled into the air.   ;shiksharthi
;एक कागज हवा में उड़ गया.
(defrule whirl2
(declare (salience 4900))
(id-root ?id whirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?id1)
(id-root ?id1 air|wind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whirl.clp 	whirl2   "  ?id "  udZa_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 12-03-2014
;The wind whirled my cap.   ;shiksharthi
;हवा मेरी टोपी उड़ा ले गई.
(defrule whirl3
(declare (salience 4900))
(id-root ?id whirl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 wind|air)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udzA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whirl.clp 	whirl3   "  ?id "  udzA_le_jA )" crlf))
)
