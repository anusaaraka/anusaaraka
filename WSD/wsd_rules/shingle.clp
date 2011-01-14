
(defrule shingle0
(declare (salience 5000))
(id-root ?id shingle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shingled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id waKZwoM_se_DZakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shingle.clp  	shingle0   "  ?id "  waKZwoM_se_DZakA_huA )" crlf))
)

;"shingled","Adj","1.waKZwoM se DZakA huA"
;The thief broke in through the shingled wall.
;
(defrule shingle1
(declare (salience 4900))
(id-root ?id shingle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMkadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shingle.clp 	shingle1   "  ?id "  kaMkadZa )" crlf))
)

;"shingle","N","1.kaMkadZa"
;Children like to play on a shingle beach.
;--"2.waKZwA"
;The shingle of the roof is soaked due to seepage of rain water.
;
;