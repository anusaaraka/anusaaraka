
(defrule life#live0
(declare (salience 5000))
(id-root ?id life#live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lives )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jIvana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  life#live.clp  	life#live0   "  ?id "  jIvana )" crlf))
)

(defrule life#live1
(declare (salience 4900))
(id-root ?id life#live)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lives )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(assert (id-H_vib_mng ?id 0))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  life#live.clp  	life#live1   "  ?id "  raha )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  life#live.clp          life#live1   "  ?id " 0 )" crlf))
)

;given_word=lives && word_category=verb	$jIvIwa_raha)

(defrule life#live2
(declare (salience 4800))
(id-root ?id life#live)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) their)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  life#live.clp 	life#live2   "  ?id "  jIvana )" crlf))
)

