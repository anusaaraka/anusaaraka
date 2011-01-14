
(defrule chilly0
(declare (salience 5000))
(id-root ?id chilly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaMdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chilly.clp 	chilly0   "  ?id "  TaMdA )" crlf))
)

(defrule chilly1
(declare (salience 4900))
(id-root ?id chilly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaNdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chilly.clp 	chilly1   "  ?id "  TaNdA )" crlf))
)

;"chilly","Adj","1.TaNdA"
;I'm very lazy in this chilly weather. 
;--"2.uwsAha_hIna"
;She is rather chilly to her guests.
;
;
