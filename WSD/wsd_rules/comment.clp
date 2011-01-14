
(defrule comment0
(declare (salience 5000))
(id-root ?id comment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI));changed 'tIkA-tippaNI' with 'tippaNI' by sheetal(29-09-09).
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comment.clp 	comment0   "  ?id "  tippaNI )" crlf))
)
;He made negative comments to the press .
;"comment","N","1.tIkA-tippaNI"
;From time to time she contributed a personal comment on his account
;
(defrule comment1
(declare (salience 4900))
(id-root ?id comment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI_kara));changed 'tIkA-tippaNI_kara' with 'tippaNI_kara' by sheetal(29-09-09).
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comment.clp 	comment1   "  ?id "  tIkA-tippaNI_kara )" crlf))
)

;"comment","V","1.tIkA-tippaNI_karanA"
;From time to time she commented on his account.
;


