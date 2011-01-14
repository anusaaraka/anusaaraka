
(defrule instrumental0
(declare (salience 5000))
(id-root ?id instrumental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instrumental.clp 	instrumental0   "  ?id "  sahAyaka )" crlf))
)

(defrule instrumental1
(declare (salience 4900))
(id-root ?id instrumental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instrumental.clp 	instrumental1   "  ?id "  sahAyaka )" crlf))
)

;"instrumental","Adj","1.sahAyaka"
;He was largely instrumental in negotiating the peace settlement.
;--"2.vAxya_saMgIwa"
;He is good in instrumental music.
;
;
