;Added by Veena Bagga (
(defrule heavily1
(declare (salience 6400))
(id-root ?id heavily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuw_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heavily.clp  	heavily1  "  ?id "  bahuw_aXika)" crlf))
) 
;Example:-The terrorist was heavily armed.
;AwaMkavAxI bahuw #aXika Saswra_yukwa kiyA gayA WA
