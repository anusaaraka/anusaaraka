
(defrule cringe0
(declare (salience 5000))
(id-root ?id cringe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cringe.clp 	cringe0   "  ?id "  xubaka )" crlf))
)

;"cringe","V","1.xubakanA/sikudZanA"
;The dog cringed at the sight of a stick. 
;
(defrule cringe1
(declare (salience 4900))
(id-root ?id cringe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sARtAMga_praNAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cringe.clp 	cringe1   "  ?id "  sARtAMga_praNAma_kara )" crlf))
)

;"cringe","VT","1.sARtAMga_praNAma_karanA"
;The accused cringed before the judge.
;
