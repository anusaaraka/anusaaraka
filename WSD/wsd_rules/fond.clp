
(defrule fond0
(declare (salience 5000))
(id-root ?id fond)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) was )
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOkina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fond.clp 	fond0   "  ?id "  SOkina )" crlf))
)

(defrule fond1
(declare (salience 4900))
(id-root ?id fond)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is )
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOkina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fond.clp 	fond1   "  ?id "  SOkina )" crlf))
)

(defrule fond2
(declare (salience 4800))
(id-root ?id fond)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) are )
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOkina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fond.clp 	fond2   "  ?id "  SOkina )" crlf))
)

(defrule fond3
(declare (salience 4700))
(id-root ?id fond)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) were )
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOkina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fond.clp 	fond3   "  ?id "  SOkina )" crlf))
)

(defrule fond4
(declare (salience 4600))
(id-root ?id fond)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) am )
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOkina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fond.clp 	fond4   "  ?id "  SOkina )" crlf))
)

(defrule fond5
(declare (salience 4500))
(id-root ?id fond)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOkina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fond.clp 	fond5   "  ?id "  SOkina )" crlf))
)

; He was fond of playing cards
(defrule fond6
(declare (salience 4400))
(id-root ?id fond)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id priya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fond.clp 	fond6   "  ?id "  priya )" crlf))
)

;"fond","Adj","1.priya"
;I have very fond memories of childhood.
;
