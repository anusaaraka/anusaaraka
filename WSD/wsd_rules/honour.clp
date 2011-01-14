
(defrule honour0
(declare (salience 5000))
(id-root ?id honour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  honour.clp 	honour0   "  ?id "  sammAna )" crlf))
)

;"honour","N","1.sammAna"
;apane se badZe saBI logo kA'honour'mAna sammAna karanA cAhiye.
;
(defrule honour1
(declare (salience 4900))
(id-root ?id honour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  honour.clp 	honour1   "  ?id "  sammAna_kara )" crlf))
)

;"honour","V","1.sammAna_karanA"
;mEM apane saBI mehamAnoM kA 'honoured'(sammAnakarawA) hUz.
;
