
(defrule current0
(declare (salience 5000))
(id-root ?id current)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varwamAnakAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  current.clp 	current0   "  ?id "  varwamAnakAlika )" crlf))
)

;Added by sheetal(o9-o9-o9)
(defrule current1
(declare (salience 4950))
(id-root ?id current)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word =(+ ?id 1) form)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varwamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  current.clp   current1   "  ?id "  varwamAna )" crlf))
)
;To pretend that our program is usable in its current form would be silly .



;"current","Adj","1.varwamAnakAlika"
;Get me a current magazine
;
(defrule current2
(declare (salience 4900))
(id-root ?id current)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  current.clp 	current2   "  ?id "  pravAha )" crlf))
)

;"current","N","1.pravAha"
;He had to swim against the current
;--"2.vixyuwa_pravAha"
;A sudden fluctuation in the current made the lights fuse
;
