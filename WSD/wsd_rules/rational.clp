
(defrule rational0
(declare (salience 5000))
(id-root ?id rational)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warkasaMgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rational.clp 	rational0   "  ?id "  warkasaMgawa )" crlf))
)

(defrule rational1
(declare (salience 4900))
(id-root ?id rational)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajFAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rational.clp 	rational1   "  ?id "  sajFAna )" crlf))
)

;"rational","Adj","1.sajFAna"
;The patient seemed quite rational.
;Man is a rational being. 
;
;
