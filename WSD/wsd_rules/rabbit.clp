
(defrule rabbit0
(declare (salience 5000))
(id-root ?id rabbit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KZaragoSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rabbit.clp 	rabbit0   "  ?id "  KZaragoSa )" crlf))
)

;"rabbit","N","1.KZaragoSa"
;Rabbit is a small burrowing animal of the hare family.
;
(defrule rabbit1
(declare (salience 4900))
(id-root ?id rabbit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lambI-cOdZI_bAweM__kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rabbit.clp 	rabbit1   "  ?id "  lambI-cOdZI_bAweM__kara )" crlf))
)

;"rabbit","V","1.lambI-cOdZI_bAweM__karanA"
;What are they rabbiiting on about?     
;
