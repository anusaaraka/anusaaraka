
(defrule catalogue0
(declare (salience 5000))
(id-root ?id catalogue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmAvalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catalogue.clp 	catalogue0   "  ?id "  nAmAvalI )" crlf))
)

;"catalogue","N","1.nAmAvalI/nAmasUcI"
;The catalogue of books is available in the computer.
;
(defrule catalogue1
(declare (salience 4900))
(id-root ?id catalogue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcIpawra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  catalogue.clp 	catalogue1   "  ?id "  sUcIpawra_banA )" crlf))
)

;"catalogue","V","1.sUcIpawra_banAnA"
;The title of books are catalogued in computers nowadays.
;
