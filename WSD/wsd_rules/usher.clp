
(defrule usher0
(declare (salience 5000))
(id-root ?id usher)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praveSaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  usher.clp 	usher0   "  ?id "  praveSaka )" crlf))
)

;"usher","N","1.praveSaka/BeMta_karAne_vAlA"
;The usher helped me to find a seat in the theatre.
;--"2.upaSikRaka"
;He was guided by the usher to complete the assignment.
;
(defrule usher1
(declare (salience 4900))
(id-root ?id usher)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praveSa_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  usher.clp 	usher1   "  ?id "  praveSa_karA )" crlf))
)

;"usher","VT","1.praveSa_karAnA/BeMta_karA"
;I was ushered in && then the interview started.
;
