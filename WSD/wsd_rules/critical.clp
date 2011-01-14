
(defrule critical0
(declare (salience 5000))
(id-root ?id critical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samIkRAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  critical.clp 	critical0   "  ?id "  samIkRAwmaka )" crlf))
)

(defrule critical1
(declare (salience 4900))
(id-root ?id critical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivecanAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  critical.clp 	critical1   "  ?id "  vivecanAwmaka )" crlf))
)

;"critical","Adj","1.vivecanAwmaka"
;He looks at every thing with his critical views. 
;Aparna sen's movie has received critical acclaim. 
;--"2.nAjZuka"
;The condition of the patient is very critical.
;--"3.saMkatamaya"
;A critical temperature of water is 100 degrees C--its boiling point at standard atmospheric pressure
;
;
