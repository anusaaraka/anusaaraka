;Added by Meena(28.4.11)
;The debate was a pretty disappointing affair. 
(defrule disppoint0
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id disappoint)
(id-word ?id disappointing)
(or(viSeRya-viSeRaNa  ?id1 ?id)(samAsa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirASAjanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  disappoint.clp       disappoint0   "  ?id "  nirASAjanaka )" crlf))
)

