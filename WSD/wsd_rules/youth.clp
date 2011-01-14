
;Added by human
(defrule youth0
(declare (salience 5000))
(id-root ?id youth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id youths )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yuvaka))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  youth.clp  	youth0   "  ?id "  yuvaka )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  " ?*wsd_dir* "  youth.clp      youth0   "  ?id "  s )"  crlf))
)

;
(defrule youth1
(declare (salience 4900))
(id-root ?id youth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 first)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  youth.clp 	youth1   "  ?id "  yuvaka )" crlf))
)

(defrule youth2
(declare (salience 4800))
(id-root ?id youth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 second)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  youth.clp 	youth2   "  ?id "  yuvaka )" crlf))
)

(defrule youth3
(declare (salience 4700))
(id-root ?id youth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuvA_avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  youth.clp 	youth3   "  ?id "  yuvA_avasWA )" crlf))
)

;default_sense && category=noun	yOvana	0
;"youth","N","1.yOvana"
;He enjoyed his youth.
;
;
