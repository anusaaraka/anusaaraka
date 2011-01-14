
(defrule respectable0
(declare (salience 5000))
(id-root ?id respectable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxaraNIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respectable.clp 	respectable0   "  ?id "  AxaraNIya )" crlf))
)

(defrule respectable1
(declare (salience 4900))
(id-root ?id respectable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respectable.clp 	respectable1   "  ?id "  mAnya )" crlf))
)

;"respectable","Adj","1.mAnya/sammAniwa"
;He was a respectable man. 
;
;
