
(defrule travel0
(declare (salience 5000))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id travelled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GUmanA))
(assert (id-H_vib_mng ?id en))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  travel.clp  	travel0   "  ?id "  GUmanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  travel.clp     travel0   "  ?id " en )" crlf))
)

;Changed by Amba from the following dict defn
;"travelled","Adj","1.bahuwa_GUmA_huA"
;Ram is well travelled.
;
;
(defrule travel1
(declare (salience 3000))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp 	travel1   "  ?id "  yAwrA_kara )" crlf))
)

(defrule travel2
(declare (salience 4800))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp 	travel2   "  ?id "  yAwrA_kA )" crlf))
)

;"travel","Adj","1.yAwrA_kA"
;Take your travel bag.
;


;Added by Meena(31.8.09)
;The shadow travels with the sun.
(defrule travel3
(declare (salience 4800))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id2)
(kriyA-with_saMbanXI ?id ?id3) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp    travel3   "  ?id "  cala )" crlf))
)

