
(defrule anodyne0
(declare (salience 5000))
(id-root ?id anodyne)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avivAxanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anodyne.clp 	anodyne0   "  ?id "  avivAxanIya )" crlf))
)

(defrule anodyne1
(declare (salience 4900))
(id-root ?id anodyne)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIrasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anodyne.clp 	anodyne1   "  ?id "  nIrasa )" crlf))
)

;"anodyne","Adj","1.nIrasa"
;He writes anodyne articles.
;--"2.pIdA nASaka"
;I gave him an anodyne tablet for headache.
;
;
