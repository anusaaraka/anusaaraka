
(defrule hearten0
(declare (salience 5000))
(id-root ?id hearten)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id heartening )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwsAhavarXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hearten.clp  	hearten0   "  ?id "  uwsAhavarXaka )" crlf))
)

;"heartening","Adj","1.uwsAhavarXaka"
;paxonnawi usake lie"heartening" WA.
;
(defrule hearten1
(declare (salience 4900))
(id-root ?id hearten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id himmawa_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hearten.clp 	hearten1   "  ?id "  himmawa_baDZA )" crlf))
)

;"hearten","V","1.himmawa baDZAnA"
;usane kaTinAiyoM ke samaya apane miwra ko"hearten"kiyA 
;
;