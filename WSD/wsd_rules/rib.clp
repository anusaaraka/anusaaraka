
(defrule rib0
(declare (salience 5000))
(id-root ?id rib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasalI_kI_haddI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rib.clp 	rib0   "  ?id "  pasalI_kI_haddI )" crlf))
)

;"rib","N","1.pasalI_kI_haddI"
;There are 24 ribs in our body.
;--"2.pawwI_kI_nasa"
;The ribs of a leaf keep it straight.
;
(defrule rib1
(declare (salience 4900))
(id-root ?id rib)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rib.clp 	rib1   "  ?id "  waMga_kara )" crlf))
)

;"rib","VT","1.waMga_karanA/majAka_banAnA"
;He is ribbed for being shy.
;--"2.pasalI_caDAnA/jodZanA"
;The doctor is going to join his cracked ribs.
;
