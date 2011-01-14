
(defrule very0
(declare (salience 5000))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) those)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very0   "  ?id "  - )" crlf))
)

(defrule very1
(declare (salience 4900))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) same )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilakula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very1   "  ?id "  bilakula )" crlf))
)

;On very same day ..
(defrule very2
(declare (salience 4800))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) next)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very2   "  ?id "  TIka )" crlf))
)

;On very next day ..
(defrule very3
(declare (salience 4700))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very3   "  ?id "  bahuwa )" crlf))
)

;"very","Adj","1.bahuwa[uwwamA_sUcaka]"
;The flower is very beautiful
;--"2.usI"
;She was sitting in the very seat
;
(defrule very4
(declare (salience 4600))
(id-root ?id very)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  very.clp 	very4   "  ?id "  awyaMwa )" crlf))
)

;"very","Adv","1.awyaMwa"
;She sang very well
;
