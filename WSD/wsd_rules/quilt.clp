
(defrule quilt0
(declare (salience 5000))
(id-root ?id quilt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id quilted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xulAI_jEsI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  quilt.clp  	quilt0   "  ?id "  xulAI_jEsI_banA )" crlf))
)

;"quilted","Adj","1.xulAI_jEsI_banA"
;Buy a quilted pillow.
;
(defrule quilt1
(declare (salience 4900))
(id-root ?id quilt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rajAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quilt.clp 	quilt1   "  ?id "  rajAI )" crlf))
)

;"quilt","N","1.rajAI"
;Jaipur is famous for its colorful quilts.
;
(defrule quilt2
(declare (salience 4800))
(id-root ?id quilt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rajAI_ba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quilt.clp 	quilt2   "  ?id "  rajAI_ba )" crlf))
)

;"quilt","VT","1.rajAI_banA"
;We quilted a mattress for the baby.
;
