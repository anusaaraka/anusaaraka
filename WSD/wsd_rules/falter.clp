
(defrule falter0
(declare (salience 5000))
(id-root ?id falter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id faltering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ladZaKadZAwA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  falter.clp  	falter0   "  ?id "  ladZaKadZAwA_huA )" crlf))
)

;"faltering","Adj","1.ladZaKadZAwA_huA"
;I am writing my sentences in faltering English.
;
(defrule falter1
(declare (salience 4900))
(id-root ?id falter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hicakicA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  falter.clp 	falter1   "  ?id "  hicakicA )" crlf))
)

;"falter","VI","1.hicakicAnA"
;I faltered many times while speaking in front of the Principal.
;--"2.himmawa_hAranA"
;We should not falter in times of crisis.
;
;