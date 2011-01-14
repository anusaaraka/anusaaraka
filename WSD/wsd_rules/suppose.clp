
(defrule suppose0
(declare (salience 5000))
(id-root ?id suppose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id supposing)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yaxi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  suppose.clp  	suppose0   "  ?id "  yaxi )" crlf))
)

;Supposing there was a war, what will you do? -- Vaishnavi
(defrule suppose1
(declare (salience 4900))
(id-root ?id suppose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suppose.clp 	suppose1   "  ?id "  mAna_le )" crlf))
)

;"suppose","V","1.mAna_lenA"
;What makes you support I'am against it.
;
