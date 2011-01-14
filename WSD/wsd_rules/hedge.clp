
(defrule hedge0
(declare (salience 5000))
(id-root ?id hedge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hedging )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAdZa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hedge.clp  	hedge0   "  ?id "  bAdZa_lagA )" crlf))
)

;"hedging","V","1.bAdZa lagAnA"
;Kewa ke cAroM waraPa kAztoM se"hedging" hEM.
; 
;"hedgehog","N","1.sAhI"
;'hedgehog' eka jAnavara hE
;        
;"hedgerow","N","1.JAdZiyoM kI paMkwi"
;stAlina apane viroXiyoM ko"hedgerow"meM raKawA WA. 
;
(defrule hedge1
(declare (salience 4900))
(id-root ?id hedge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hedge.clp 	hedge1   "  ?id "  bAda )" crlf))
)

;"hedge","N","1.bAda"
;gadZariye apanI BedZoM ko rAwa meM'hedge'baMxa karake raKawe hEM.
;
(defrule hedge2
(declare (salience 4800))
(id-root ?id hedge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAdZa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hedge.clp 	hedge2   "  ?id "  bAdZa_lagA )" crlf))
)

;"hedge","V","1.bAdZa_lagAnA"
;Kewa ke cAroM waraPa kAztoM se 'hedge' banI huI hE .
;
