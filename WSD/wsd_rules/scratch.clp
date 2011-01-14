
(defrule scratch0
(declare (salience 5000))
(id-root ?id scratch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMroca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scratch.clp 	scratch0   "  ?id "  KaMroca )" crlf))
)

;"scratch","N","1.KaMroca"
(defrule scratch1
(declare (salience 4900))
(id-root ?id scratch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kuraca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scratch.clp 	scratch1   "  ?id "  Kuraca )" crlf))
)

;"scratch","V","1.KuracanA"
;The dog is scratching at the door.                    
;--"2.GasItanA"
;He'd scratched his name in the bark of the tree.    
;--"3.KujZalAnA"
;Scratching the rash will only make it worse.          
;--"4.vApasa_lenA"
;I had to scratch from the debate because of stage fear.
;
