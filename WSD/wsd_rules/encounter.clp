
(defrule encounter0
(declare (salience 5000))
(id-root ?id encounter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encounter.clp 	encounter0   "  ?id "  ladZAI )" crlf))
)

;"encounter","N","1.ladZAI"
;The terrorists were killed in an encounter with the police.
;I had a brief encounter with a angry man.
;
(defrule encounter1
(declare (salience 4900))
(id-root ?id encounter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encounter.clp 	encounter1   "  ?id "  sAmanA_kara )" crlf))
)

(defrule encounter2
(declare (salience 4800))
(id-root ?id encounter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encounter.clp 	encounter2   "  ?id "  sAmanA_ho )" crlf))
)

;"encounter","VT","1.sAmanA_honA[karanA]"
;They encountered several implementaional problems in the beginning of the project. 
;
