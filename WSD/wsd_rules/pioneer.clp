
(defrule pioneer0
(declare (salience 5000))
(id-root ?id pioneer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pioneering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mArga_praSaswa_karanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pioneer.clp  	pioneer0   "  ?id "  mArga_praSaswa_karanevAlA )" crlf))
)

;"pioneering","Adj","1.mArga_praSaswa_karanevAlA"
;Scientists are doing pioneering research in inventing new things.
;
(defrule pioneer1
(declare (salience 4900))
(id-root ?id pioneer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agragAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pioneer.clp 	pioneer1   "  ?id "  agragAmI )" crlf))
)

;"pioneer","N","1.agragAmI/paWapraxarSaka"
;They were the pioneers in the field of microsurgery.
;--"2.praWama_basane_vAlA"
;Early man was the pioneer on the earth.
;
(defrule pioneer2
(declare (salience 4800))
(id-root ?id pioneer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga_praSaswa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pioneer.clp 	pioneer2   "  ?id "  mArga_praSaswa_kara )" crlf))
)

;"pioneer","V","1.mArga_praSaswa_karanA"
;He poineered research in this area.
;
