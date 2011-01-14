
(defrule mislead0
(declare (salience 5000))
(id-root ?id mislead)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id misleading )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id galawaPahamI_pExA_karanevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mislead.clp  	mislead0   "  ?id "  galawaPahamI_pExA_karanevAlA )" crlf))
)

;"misleading","Adj","1.galawaPahamI pExA karanevAlA"
;All the information provided by her was misleading.
;
(defrule mislead1
(declare (salience 4900))
(id-root ?id mislead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paWaBraRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mislead.clp 	mislead1   "  ?id "  paWaBraRta_kara )" crlf))
)

;"mislead","V","1.paWaBraRta_karanA"
;He always misled innocent people.
;
;