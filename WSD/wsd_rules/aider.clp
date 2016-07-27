(defrule aider1
(declare (salience 6500))
(id-root ?id aider)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*"   aider.clp	aider1  " ?id "  peda)" crlf))
)
;I saw a huge aider in the forest . 
;Added by Veena Bagga

