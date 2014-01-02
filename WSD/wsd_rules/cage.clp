
;;sent by Anand Kishoreji(Delhi)
;;Example:-Animals are kept in a cage.
(defrule cage1
(declare (salience 6400))
(id-root ?id cage)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pinjarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cage.clp     cage1   " ?id " pinjarA)" crlf))
)




;Added by Meena(22.10.10)
;He paced the room like a caged animal.
(defrule cage02
(declare (salience 6500))
(id-root ?id cage)
;(sAmAnya_vAkya)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id caged)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pinjare_meM_banxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cage.clp     cage02  " ?id " pinjare_me_banxa)" crlf))
)

;Commented this rule by Roja because above rule does the same thing. Suggested by Sukhada(28-12-13)
;sent by Anand Kishoreji(Delhi)
;Example:-You will see caged animals in a zoological garden.
;(defrule cage2
;(declare (salience 6500))
;(id-root ?id cage)
;(sAmAnya_vAkya)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id transitive verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pinjare me banxa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cage.clp     cage2  " ?id "
;pinjare me banxa)" crlf))
;)

