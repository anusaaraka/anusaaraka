
(defrule mountaineer0
(declare (salience 5000))
(id-root ?id mountaineer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mountaineering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parvawArohaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mountaineer.clp  	mountaineer0   "  ?id "  parvawArohaNa )" crlf))
)

;"mountaineering","N","1.parvawArohaNa"
;Mountaineering is a tedious activity && needs months of training && practice.
;
(defrule mountaineer1
(declare (salience 4900))
(id-root ?id mountaineer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parvawArohI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mountaineer.clp 	mountaineer1   "  ?id "  parvawArohI )" crlf))
)

;"mountaineer","N","1.parvawArohI"
;A person who climbs mountains is called a mountaineer.
;
;