
(defrule thrill0
(declare (salience 5000))
(id-root ?id thrill)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id thrilling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id romAMcakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  thrill.clp  	thrill0   "  ?id "  romAMcakArI )" crlf))
)

;"thrilling","Adj","1.romAMcakArI"
;Alfred Hichcok's movies are thrilling to watch.
;
(defrule thrill1
(declare (salience 4900))
(id-root ?id thrill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id romAMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrill.clp 	thrill1   "  ?id "  romAMca )" crlf))
)

;"thrill","N","1.romAMca"
;Watching horror films gives him the thrills.
;
(defrule thrill2
(declare (salience 4800))
(id-root ?id thrill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id romAMciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thrill.clp 	thrill2   "  ?id "  romAMciwa_kara )" crlf))
)

;"thrill","VTI","1.romAMciwa_karanA"
;The train ride thrilled the children..
;He was thrilled by the speed car.
;
