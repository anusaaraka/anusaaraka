
(defrule spectacle0
(declare (salience 5000))
(id-root ?id spectacle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id spectacles )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id caSmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  spectacle.clp  	spectacle0   "  ?id "  caSmA )" crlf))
)

(defrule spectacle1
(declare (salience 4900))
(id-root ?id spectacle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spectacle.clp 	spectacle1   "  ?id "  praxarSana )" crlf))
)

;default_sense && category=noun	praxarSana/wamASA	0
;"spectacle","N","1.praxarSana/wamASA"
;It is special spectacle on 26th Jan. this year.
;
;