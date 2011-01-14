
(defrule inbreed0
(declare (salience 5000))
(id-root ?id inbreed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inbreeding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anwaH_prajanana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inbreed.clp  	inbreed0   "  ?id "  anwaH_prajanana )" crlf))
)

;"inbreeding","N","1.anwaH prajanana"
;There are many deformities caused by inbreeding.
;
(defrule inbreed1
(declare (salience 4900))
(id-root ?id inbreed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id inbred )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sahaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  inbreed.clp  	inbreed1   "  ?id "  sahaja )" crlf))
)

;"inbred","Adj","1.sahaja"
;Culture is some times learned, but not inbred.
;
;
;
