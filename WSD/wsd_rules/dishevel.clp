
(defrule dishevel0
(declare (salience 5000))
(id-root ?id dishevel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dishevelled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id biKare_bAloM_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dishevel.clp  	dishevel0   "  ?id "  biKare_bAloM_vAlA )" crlf))
)

;"dishevelled","Adj","1.biKare bAloM vAlA"
;He has a rather dishevelled hairstyle.
;
(defrule dishevel1
(declare (salience 4900))
(id-root ?id dishevel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aswa_vyaswa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dishevel.clp 	dishevel1   "  ?id "  aswa_vyaswa_kara_xe )" crlf))
)

;"dishevel","VT","1.aswa vyaswa kara xenA"
;The child dishevelled his mother's hair.
;
;
