
(defrule snug0
(declare (salience 5000))
(id-root ?id snug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suKaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snug.clp 	snug0   "  ?id "  suKaxa )" crlf))
)

;"snug","Adj","1.suKaxa/ArAmaxeha"
;I felt warm && snug in bed.
;--"2.xuruswa/cuswa"
;The jacket's a bit snug across the shoulders.
;
(defrule snug1
(declare (salience 4900))
(id-root ?id snug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id susaMhawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snug.clp 	snug1   "  ?id "  susaMhawa )" crlf))
)

;"snug","N","1.susaMhawa"
;She was warm && snug in her blanket.
;
