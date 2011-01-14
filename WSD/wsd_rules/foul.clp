
(defrule foul0
(declare (salience 5000))
(id-root ?id foul)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyamaviruxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foul.clp 	foul0   "  ?id "  niyamaviruxXa )" crlf))
)

(defrule foul1
(declare (salience 4900))
(id-root ?id foul)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malina_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foul.clp 	foul1   "  ?id "  malina_kara )" crlf))
)

(defrule foul2
(declare (salience 4800))
(id-root ?id foul)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxabUxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foul.clp 	foul2   "  ?id "  baxabUxAra )" crlf))
)

;"foul","Adj","1.baxabUxAra"
;The open nallah emits foul smell.
;--"2.aBaxra"
;The movie was full of foul language.
;--"3.niyama_viruxXa"
;He played a foul game && won the match.
;
;
