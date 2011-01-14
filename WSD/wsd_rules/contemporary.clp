
(defrule contemporary0
(declare (salience 5000))
(id-root ?id contemporary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXunika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contemporary.clp 	contemporary0   "  ?id "  AXunika )" crlf))
)

(defrule contemporary1
(declare (salience 4900))
(id-root ?id contemporary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samakAlIna_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contemporary.clp 	contemporary1   "  ?id "  samakAlIna_vyakwi )" crlf))
)

;"contemporary","N","1.samakAlIna_vyakwi"
;He && my mother were contemporaries at college.
;
;
