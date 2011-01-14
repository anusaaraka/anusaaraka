
(defrule ideal0
(declare (salience 5000))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ideal.clp 	ideal0   "  ?id "  AxarSa )" crlf))
)

(defrule ideal1
(declare (salience 4900))
(id-root ?id ideal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ideal.clp 	ideal1   "  ?id "  pUrNa )" crlf))
)

;"ideal","Adj","1.pUrNa/aBIRta"
;She is an ideal person.
;--"2.kAlpanika"
;This is an ideal story.
;--"3.AxarSa"
;M.K. Gandhi is an ideal for many Indians.
;
;
