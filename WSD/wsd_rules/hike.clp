
(defrule hike0
(declare (salience 5000))
(id-root ?id hike)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hiking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pExala_laMbI_yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hike.clp  	hike0   "  ?id "  pExala_laMbI_yAwrA )" crlf))
)

;"hiking","N","1.pExala laMbI yAwrA"
;parvawArohI"hiking" ke lie viSeRa prakAra ke jUwe pahanawe hEM.
;
(defrule hike1
(declare (salience 4900))
(id-root ?id hike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExala_laMbI_yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hike.clp 	hike1   "  ?id "  pExala_laMbI_yAwrA )" crlf))
)

;"hike","N","1.pExala_laMbI_yAwrA"
;amaranAWa jAne vAle yAwrI'hike' karawe hE
;
(defrule hike2
(declare (salience 4800))
(id-root ?id hike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAxa_yAwrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hike.clp 	hike2   "  ?id "  pAxa_yAwrA_kara )" crlf))
)

;"hike","V","1.pAxa_yAwrA_karanA"
;caMxraSeKara ne kanyAkumArI se kaSmIra waka'hike' kI WI.
;
