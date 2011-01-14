;Added by Meena(6.3.10)
;The former astronaut was alone and afraid .  
(defrule former0 
(declare (salience 4000))
(id-root ?id former)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUwapUrva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  former.clp     former0   "  ?id "   BUwapUrva )" crlf)
)
)

