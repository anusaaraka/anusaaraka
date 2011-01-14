

;Added by Meena(23.02.10);needs to be looked into again as for most of the verbs
;tam meaning " yA_jAyegA " tam meaning works fine except for the word "found" with hindi meaning "mila".It can be added through apertium later if we find other verbs also where we  should get "0_jAyegA" as hindi tam meaning .

;There is still a ray of hope that the missing child will be found . 
(defrule will_be_en_tam0
(declare (salience 5000))
(id-TAM ?id will_be_en)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id found)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id will_be_en 0_jAyegA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  will_be_en_tam.clp    will_be_en_tam0  "  ?id " 0_jAyegA )" crlf))
(assert (id-tam_type ?id passive))
)

