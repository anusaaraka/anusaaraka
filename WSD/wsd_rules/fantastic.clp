
(defrule fantastic0
(declare (salience 5000))
(id-root ?id fantastic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anoKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fantastic.clp 	fantastic0   "  ?id "  anoKA )" crlf))
)

(defrule fantastic1
(declare (salience 4900))
(id-root ?id fantastic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axBuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fantastic.clp 	fantastic1   "  ?id "  axBuwa )" crlf))
)

;"fantastic","Adj","1.axBuwa"
;I have got a fantastic idea.
;
;
;LEVEL 
;Headword  : fantastic
;
;Examples --
;
;"fantastic","Adj","1.axBuwa"
;His play was fantastic
;usakA Kela axBuwa WA
;--"2.awyaXika" <--axBuwa
;She enjoyes a fantastic support in her party.
;
;sUwra : axBuwa
;
