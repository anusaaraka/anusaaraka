
(defrule o0
(declare (salience 5000))
(id-root ?id o)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id interjection)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id oha!))
)

;"o","Interj","1.oha!"
;O, not again!
;
(defrule o1
(declare (salience 4900))
(id-root ?id o)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id o))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  o.clp 	o0   "  ?id "  o )" crlf))
)

;"o","N","1.o{akRara}"
;There are two o's in the word'colour', whether you spell it the American or the British way.
;--"2.SUnya"
;Our telephone number is five o five, two three one.
;
(defrule o2
(declare (salience 4800))
(id-root ?id o)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  o.clp 	o1   "  ?id "  kA )" crlf))
)

;"o","Prep","1.kA{'OYPa'_kA_saMkRipwIkaraNa}"
;Children must drink a cup - o - milk in the morning.
;
