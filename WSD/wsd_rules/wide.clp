
(defrule wide0
(declare (salience 5000))
(id-root ?id wide)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wide.clp 	wide0   "  ?id "  vyApaka )" crlf))
)

(defrule wide1
(declare (salience 4900))
(id-root ?id wide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wide.clp 	wide1   "  ?id "  cOdZA )" crlf))
)

(defrule wide2
(declare (salience 4800))
(id-root ?id wide)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wide.clp 	wide2   "  ?id "  cOdA )" crlf))
)

;"wide","Adj","1.cOdA"
;This is a wide road.
;--"2.viswqwa"
;A wide audience watched the programme.
;--"3.pahuzca_ke_bAhara_ho{geMxa}"
;'That was a wide ball' the umpire said.
;
;
