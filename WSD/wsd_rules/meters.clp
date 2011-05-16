


;Added by Meena(11.5.11)
;The suspect was about 2 meters tall. 
(defrule meter0
(declare (salience 5000))
(id-root ?id metre)
(id-word ?id meters)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat =(- ?id 1) <num>)(id-cat_coarse =(- ?id 1) number))
(viSeRya-saMKyA_viSeRaNa ?id  =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mItara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meters.clp     meter0   "  ?id "  mItara )" crlf))
)

