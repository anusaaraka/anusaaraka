
(defrule out0
(declare (salience 5000))
(id-root ?id out)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id outing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  out.clp  	out0   "  ?id "  sEra )" crlf))
)

(defrule out1
(declare (salience 4900))
(id-root ?id out)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  out.clp 	out1   "  ?id "  - )" crlf))
)

;"outing","N","1.sEra"
;The family outing was a pleasure.
;--"2.BAga lenA"
;The horse finished second on his last outing.
;
(defrule out2
(declare (salience 4800))
(id-root ?id out)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  out.clp 	out2   "  ?id "  bAhara )" crlf))
)

;"out","Adv","1.bAhara"
;They went out last night.
;Ram went to see his friend but he was out.
;The truth is out finally.
;--"2.KZawama/aMwa"
;All the lights were out in the streets.
;--"3.behoSa"
;He was out for more than an hour before the nurses could bring him round.
;
(defrule out3
(declare (salience 4700))
(id-root ?id out)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  out.clp 	out3   "  ?id "  ke_bAhara )" crlf))
)

;"out","Prep","1.ke_bAhara"
;He walked out of the building with a man in blue coat.
;
(defrule out4
(declare (salience 4600))
(id-root ?id out)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  out.clp 	out4   "  ?id "  bAhara_nikAla )" crlf))
)

;"out","VT","1.bAhara_nikAlanA"
;This actor was outed last week.
;
(defrule out5
(declare (salience 4500))
(id-root ?id out)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  out.clp 	out5   "  ?id "  bAhara )" crlf))
)

