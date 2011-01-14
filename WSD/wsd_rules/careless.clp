
(defrule careless0
(declare (salience 5000))
(id-root ?id careless)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beparavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careless.clp 	careless0   "  ?id "  beparavAhI )" crlf))
)

(defrule careless1
(declare (salience 4900))
(id-root ?id careless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asAvaXAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careless.clp 	careless1   "  ?id "  asAvaXAna )" crlf))
)

(defrule careless2
(declare (salience 4800))
(id-root ?id careless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beparavAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careless.clp 	careless2   "  ?id "  beparavAha )" crlf))
)

;"careless","Adj","1.beparavAha"
;She is careless about her clothes.
;
;
