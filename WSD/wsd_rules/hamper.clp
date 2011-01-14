
(defrule hamper0
(declare (salience 5000))
(id-root ?id hamper)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hampered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id avaruXxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hamper.clp  	hamper0   "  ?id "  avaruXxa )" crlf))
)

;"hampered","Adj","1.avaruXxa"
;Malnourishment hampered his growth.
;kupoRaNa ne usakI baDZawa roka xI.
;
(defrule hamper1
(declare (salience 4900))
(id-root ?id hamper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pitArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hamper.clp 	hamper1   "  ?id "  pitArA )" crlf))
)

;"hamper","N","1.pitArA"
;Europeans bring their food && wine in hampers for picnic .
;yUropiyana pikanika ke lie apanA KAnA va SarAba pitAre meM lAwe hEM.
;
(defrule hamper2
(declare (salience 4800))
(id-root ?id hamper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukAvata_pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hamper.clp 	hamper2   "  ?id "  rukAvata_pExA_kara )" crlf))
)

;"hamper","V","1.rukAvata_pExA_karanA"
;Bad weather can hamper  mountaineering .
;KarAba mOsama  parvawArohaNa meM rukAvata pExA karawA hE..
;
