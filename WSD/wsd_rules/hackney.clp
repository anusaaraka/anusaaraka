
(defrule hackney0
(declare (salience 5000))
(id-root ?id hackney)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hackneyed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awisAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hackney.clp  	hackney0   "  ?id "  awisAmAnya )" crlf))
)

;"hackneyed","Adj","1.awisAmAnya[Sabxa]"
;English being spoken world over has many hackneyed expressions
;cUzkI aMgrejZI saMsAra Bara meM bolI jAwI hE isalie isameM bahuwa sAre awisAmAnya  muhAvare hEM .
;
(defrule hackney1
(declare (salience 4900))
(id-root ?id hackney)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id savArI_GodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hackney.clp 	hackney1   "  ?id "  savArI_GodZA )" crlf))
)

;"hackney","N","1.savArI GodZA"
; kexAranAWa jAne vAle kaI yAwrI "hackney" para caDZa kara yAwrA karawe heM.
;
;