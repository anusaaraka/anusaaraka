
(defrule flute0
(declare (salience 5000))
(id-root ?id flute)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fluting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bArIka_kArIgarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flute.clp  	flute0   "  ?id "  bArIka_kArIgarI )" crlf))
)

;"fluting","N","1.bArIka kArIgarI"
;These carvings have fine fluting.
;
(defrule flute1
(declare (salience 4900))
(id-root ?id flute)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fluted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id swamBa_Axi_para_kI_gayI_kArIgarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flute.clp  	flute1   "  ?id "  swamBa_Axi_para_kI_gayI_kArIgarI )" crlf))
)

;"fluted","Adj","1.swamBa Axi para kI gayI kArIgarI"
;The columns of this temple have fluted designs.
;
;
(defrule flute2
(declare (salience 4800))
(id-root ?id flute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzsurI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flute.clp 	flute2   "  ?id "  bAzsurI )" crlf))
)

;"flute","N","1.bAzsurI"
;He is well versed in playing flute.
;
;
