
(defrule matt0
(declare (salience 5000))
(id-root ?id matt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id matting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id catAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  matt.clp  	matt0   "  ?id "  catAI )" crlf))
)

;"matting","N","1.catAI"
;Floors are covered with coconut mattings.
;
(defrule matt1
(declare (salience 4900))
(id-root ?id matt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRpraBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matt.clp 	matt1   "  ?id "  niRpraBa )" crlf))
)

;"matt","Adj","1.niRpraBa"
;Will this paint give a gloss or a matt finish.
;
;
