
(defrule quick0
(declare (salience 5000))
(id-root ?id quick)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quick.clp 	quick0   "  ?id "  wejZa )" crlf))
)

;"quick","Adj","1.wejZa"
;He  was quick to make friends
;He has a quick mind.
;She made a quick decision
;I will have a quick look at the book.
;--"2.PurwIlA"
;He is very quick with his work && finishes it in short time.
;
(defrule quick1
(declare (salience 4900))
(id-root ?id quick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PurwI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quick.clp 	quick1   "  ?id "  PurwI_se )" crlf))
)

;"quick","Adv","1.PurwI_se"
;Run as quick && catch me if you can
;
(defrule quick2
(declare (salience 4800))
(id-root ?id quick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haswAMguli_ke_aXa:_BAga))
)

;"quick","N","1.haswAMguli_ke_aXa:_BAga"
;Pricking with a pin on the quick of a finger is painful
;
